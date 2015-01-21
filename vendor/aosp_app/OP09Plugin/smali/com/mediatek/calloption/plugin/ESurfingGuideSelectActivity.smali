.class public Lcom/mediatek/calloption/plugin/ESurfingGuideSelectActivity;
.super Landroid/app/Activity;
.source "ESurfingGuideSelectActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/calloption/plugin/ESurfingGuideSelectActivity$ViewHolder;
    }
.end annotation


# static fields
.field private static final DIALING_GUIDE_CLASS:Ljava/lang/String; = "com.mediatek.calloption.plugin.ESurfingDialingGuideActivity"

.field private static final NUMBER_LENGTH_MINUS:I = 0x4

.field private static final PLUGIN_PACKAGE:Ljava/lang/String; = "com.mediatek.op09.plugin"

.field private static final SIM_BACKGROUND_COLOR_INDEX_BLUE:I = 0x0

.field private static final SIM_BACKGROUND_COLOR_INDEX_ORANGE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ESurfingGuideSelectActivity"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIntent:Landroid/content/Intent;

.field private mIsMultiSim:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 47
    return-void
.end method

.method private getCountryBySlotId(I)Ljava/lang/String;
    .locals 8
    .parameter "slotId"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 303
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCountryBySlotId() slotId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/calloption/plugin/ESurfingGuideSelectActivity;->log(Ljava/lang/String;)V

    .line 304
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 305
    .local v2, telephonyManager:Landroid/telephony/TelephonyManager;
    const/4 v1, 0x0

    .line 306
    .local v1, mccMnc:Ljava/lang/String;
    const/4 v0, 0x0

    .line 308
    .local v0, mcc:Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 309
    if-nez p1, :cond_1

    invoke-virtual {v2, v5}, Landroid/telephony/TelephonyManager;->hasIccCardGemini(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 310
    invoke-virtual {v2, v5}, Landroid/telephony/TelephonyManager;->getSimOperatorGemini(I)Ljava/lang/String;

    move-result-object v1

    .line 319
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCountryBySlotId() mccMnc : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/calloption/plugin/ESurfingGuideSelectActivity;->log(Ljava/lang/String;)V

    .line 320
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v7, :cond_0

    .line 321
    invoke-virtual {v1, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 323
    :cond_0
    return-object v0

    .line 311
    :cond_1
    if-ne v6, p1, :cond_2

    invoke-virtual {v2, v6}, Landroid/telephony/TelephonyManager;->hasIccCardGemini(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 312
    invoke-virtual {v2, v6}, Landroid/telephony/TelephonyManager;->getSimOperatorGemini(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 314
    :cond_2
    const-string v3, "there is no valid UIM card in the phone!"

    invoke-static {v3}, Lcom/mediatek/calloption/plugin/ESurfingGuideSelectActivity;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 317
    :cond_3
    const-string v3, "mTelephonyManager is null!"

    invoke-static {v3}, Lcom/mediatek/calloption/plugin/ESurfingGuideSelectActivity;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getSimInfoBySlot(I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    .locals 5
    .parameter "slot"

    .prologue
    const/4 v3, 0x0

    .line 129
    const/4 v1, 0x0

    .line 130
    .local v1, insertedSimInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    const/4 v2, 0x0

    .line 131
    .local v2, simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    iget-object v4, p0, Lcom/mediatek/calloption/plugin/ESurfingGuideSelectActivity;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/mediatek/telephony/SimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 133
    if-nez v1, :cond_1

    .line 134
    const-string v4, "mSimInfoList OR mInsertedSimInfoList is null"

    invoke-static {v4}, Lcom/mediatek/calloption/plugin/ESurfingGuideSelectActivity;->log(Ljava/lang/String;)V

    .line 145
    :cond_0
    :goto_0
    return-object v3

    .line 138
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 139
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    check-cast v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 140
    .restart local v2       #simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    iget v4, v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    if-ne v4, p1, :cond_2

    move-object v3, v2

    .line 141
    goto :goto_0

    .line 138
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 337
    const-string v0, "ESurfingGuideSelectActivity"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    return-void
.end method

.method private startEsurfingGuideBySlotId(I)V
    .locals 3
    .parameter "slotId"

    .prologue
    .line 327
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startEsurfingGuideBySlotId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/calloption/plugin/ESurfingGuideSelectActivity;->log(Ljava/lang/String;)V

    .line 328
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 329
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 331
    const-string v1, "com.mediatek.op09.plugin"

    const-string v2, "com.mediatek.calloption.plugin.ESurfingDialingGuideActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 332
    const-string v1, "com.android.phone.extra.slot"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 333
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 334
    return-void
.end method


# virtual methods
.method protected createViewHolder(Landroid/view/View;)Lcom/mediatek/calloption/plugin/ESurfingGuideSelectActivity$ViewHolder;
    .locals 3
    .parameter "view"

    .prologue
    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createView(), holder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/calloption/plugin/ESurfingGuideSelectActivity;->log(Ljava/lang/String;)V

    .line 202
    new-instance v0, Lcom/mediatek/calloption/plugin/ESurfingGuideSelectActivity$ViewHolder;

    invoke-direct {v0, p0}, Lcom/mediatek/calloption/plugin/ESurfingGuideSelectActivity$ViewHolder;-><init>(Lcom/mediatek/calloption/plugin/ESurfingGuideSelectActivity;)V

    .line 203
    .local v0, holder:Lcom/mediatek/calloption/plugin/ESurfingGuideSelectActivity$ViewHolder;
    const v1, 0x7f0b00b6

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/mediatek/calloption/plugin/ESurfingGuideSelectActivity$ViewHolder;->mSimSignal:Landroid/widget/TextView;

    .line 204
    const v1, 0x7f0b00b1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/mediatek/calloption/plugin/ESurfingGuideSelectActivity$ViewHolder;->mSimStatus:Landroid/widget/ImageView;

    .line 205
    const v1, 0x7f0b00b7

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/mediatek/calloption/plugin/ESurfingGuideSelectActivity$ViewHolder;->mShortPhoneNumber:Landroid/widget/TextView;

    .line 206
    const v1, 0x7f0b00b9

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/mediatek/calloption/plugin/ESurfingGuideSelectActivity$ViewHolder;->mDisplayName:Landroid/widget/TextView;

    .line 207
    const v1, 0x7f0b00ba

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/mediatek/calloption/plugin/ESurfingGuideSelectActivity$ViewHolder;->mPhoneNumber:Landroid/widget/TextView;

    .line 208
    const v1, 0x7f0b00b0

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/calloption/plugin/ESurfingGuideSelectActivity$ViewHolder;->mSimIcon:Landroid/view/View;

    .line 209
    const v1, 0x7f0b00b8

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/mediatek/calloption/plugin/ESurfingGuideSelectActivity$ViewHolder;->mSuggested:Landroid/widget/ImageView;

    .line 211
    return-object v0
.end method

.method protected getSimStatusIcon(I)I
    .locals 5
    .parameter "slot"

    .prologue
    .line 215
    const-string v4, "phone"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 217
    .local v1, iTel:Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_0

    .line 218
    const/4 v2, 0x0

    .line 258
    :goto_0
    return v2

    .line 221
    :cond_0
    const/4 v3, -0x1

    .line 223
    .local v3, state:I
    :try_start_0
    iget-boolean v4, p0, Lcom/mediatek/calloption/plugin/ESurfingGuideSelectActivity;->mIsMultiSim:Z

    if-eqz v4, :cond_1

    .line 224
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getSimIndicatorStateGemini(I)I

    move-result v3

    .line 232
    :goto_1
    const/4 v2, 0x0

    .line 233
    .local v2, resourceId:I
    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 238
    :pswitch_1
    const v2, 0x202011d

    .line 239
    goto :goto_0

    .line 226
    .end local v2           #resourceId:I
    :cond_1
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getSimIndicatorState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_1

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 235
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v2       #resourceId:I
    :pswitch_2
    const v2, 0x202010a

    .line 236
    goto :goto_0

    .line 241
    :pswitch_3
    const v2, 0x2020122

    .line 242
    goto :goto_0

    .line 244
    :pswitch_4
    const v2, 0x2020124

    .line 245
    goto :goto_0

    .line 247
    :pswitch_5
    const v2, 0x2020103

    .line 248
    goto :goto_0

    .line 250
    :pswitch_6
    const v2, 0x20200fa

    .line 251
    goto :goto_0

    .line 253
    :pswitch_7
    const v2, 0x2020123

    .line 254
    goto :goto_0

    .line 233
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public initItemViewHolder(Lcom/mediatek/calloption/plugin/ESurfingGuideSelectActivity$ViewHolder;Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)V
    .locals 8
    .parameter "holder"
    .parameter "simInfo"

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x4

    .line 149
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initItemView(), simInfo.mNumber = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/calloption/plugin/ESurfingGuideSelectActivity;->log(Ljava/lang/String;)V

    .line 153
    iget-object v1, p1, Lcom/mediatek/calloption/plugin/ESurfingGuideSelectActivity$ViewHolder;->mDisplayName:Landroid/widget/TextView;

    iget-object v2, p2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v1, p1, Lcom/mediatek/calloption/plugin/ESurfingGuideSelectActivity$ViewHolder;->mSimIcon:Landroid/view/View;

    sget-object v2, Lcom/mediatek/telephony/SimInfoManager;->SimBackgroundDarkRes:[I

    iget v3, p2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 156
    const-string v0, ""

    .line 157
    .local v0, shortNumber:Ljava/lang/String;
    iget-object v1, p2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 158
    iget v1, p2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDispalyNumberFormat:I

    packed-switch v1, :pswitch_data_0

    .line 180
    :goto_1
    iget-object v1, p1, Lcom/mediatek/calloption/plugin/ESurfingGuideSelectActivity$ViewHolder;->mPhoneNumber:Landroid/widget/TextView;

    iget-object v2, p2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v1, p1, Lcom/mediatek/calloption/plugin/ESurfingGuideSelectActivity$ViewHolder;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 185
    :goto_2
    iget-object v1, p1, Lcom/mediatek/calloption/plugin/ESurfingGuideSelectActivity$ViewHolder;->mShortPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v1, p1, Lcom/mediatek/calloption/plugin/ESurfingGuideSelectActivity$ViewHolder;->mSimSignal:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 187
    iget-object v1, p1, Lcom/mediatek/calloption/plugin/ESurfingGuideSelectActivity$ViewHolder;->mSimStatus:Landroid/widget/ImageView;

    iget v2, p2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-virtual {p0, v2}, Lcom/mediatek/calloption/plugin/ESurfingGuideSelectActivity;->getSimStatusIcon(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 188
    iget-object v1, p1, Lcom/mediatek/calloption/plugin/ESurfingGuideSelectActivity$ViewHolder;->mSuggested:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 189
    iget v1, p2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    if-nez v1, :cond_5

    .line 190
    iget-object v1, p1, Lcom/mediatek/calloption/plugin/ESurfingGuideSelectActivity$ViewHolder;->mSimIcon:Landroid/view/View;

    sget-object v2, Lcom/mediatek/telephony/SimInfoManager;->SimBackgroundDarkRes:[I

    aget v2, v2, v6

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 160
    :pswitch_0
    iget-object v1, p2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v4, :cond_2

    .line 161
    iget-object v0, p2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mNumber:Ljava/lang/String;

    goto :goto_1

    .line 163
    :cond_2
    iget-object v1, p2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 165
    goto :goto_1

    .line 167
    :pswitch_1
    iget-object v1, p2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v4, :cond_3

    .line 168
    iget-object v0, p2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mNumber:Ljava/lang/String;

    goto :goto_1

    .line 170
    :cond_3
    iget-object v1, p2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mNumber:Ljava/lang/String;

    iget-object v2, p2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    iget-object v3, p2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 173
    goto :goto_1

    .line 175
    :pswitch_2
    const-string v0, ""

    .line 176
    goto :goto_1

    .line 183
    :cond_4
    iget-object v1, p1, Lcom/mediatek/calloption/plugin/ESurfingGuideSelectActivity$ViewHolder;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 192
    :cond_5
    iget v1, p2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    if-ne v6, v1, :cond_6

    .line 193
    iget-object v1, p1, Lcom/mediatek/calloption/plugin/ESurfingGuideSelectActivity$ViewHolder;->mSimIcon:Landroid/view/View;

    sget-object v2, Lcom/mediatek/telephony/SimInfoManager;->SimBackgroundDarkRes:[I

    aget v2, v2, v5

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 196
    :cond_6
    const-string v1, "slot is neither GEMINI_SIM_1 or GEMINI_SIM_2"

    invoke-static {v1}, Lcom/mediatek/calloption/plugin/ESurfingGuideSelectActivity;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 158
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 275
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 292
    :goto_0
    return-void

    .line 277
    :pswitch_0
    const-string v0, "sim_item1"

    invoke-static {v0}, Lcom/mediatek/calloption/plugin/ESurfingGuideSelectActivity;->log(Ljava/lang/String;)V

    .line 278
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/calloption/plugin/ESurfingGuideSelectActivity;->startEsurfingGuideBySlotId(I)V

    goto :goto_0

    .line 282
    :pswitch_1
    const-string v0, "sim_item2"

    invoke-static {v0}, Lcom/mediatek/calloption/plugin/ESurfingGuideSelectActivity;->log(Ljava/lang/String;)V

    .line 283
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/calloption/plugin/ESurfingGuideSelectActivity;->startEsurfingGuideBySlotId(I)V

    goto :goto_0

    .line 287
    :pswitch_2
    const-string v0, "cancel button"

    invoke-static {v0}, Lcom/mediatek/calloption/plugin/ESurfingGuideSelectActivity;->log(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 275
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0082
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 64
    iput-object p0, p0, Lcom/mediatek/calloption/plugin/ESurfingGuideSelectActivity;->mContext:Landroid/content/Context;

    .line 66
    const/4 v1, 0x0

    .line 67
    .local v1, insertedSimInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    const/4 v2, 0x0

    .line 68
    .local v2, simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    const/4 v7, -0x1

    .line 69
    .local v7, slotId:I
    iget-object v10, p0, Lcom/mediatek/calloption/plugin/ESurfingGuideSelectActivity;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/mediatek/telephony/SimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 70
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x1

    if-ge v10, v11, :cond_1

    .line 71
    :cond_0
    const-string v10, " mInsertedSimInfoList is null"

    invoke-static {v10}, Lcom/mediatek/calloption/plugin/ESurfingGuideSelectActivity;->log(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 119
    :goto_0
    return-void

    .line 75
    :cond_1
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/mediatek/calloption/plugin/ESurfingGuideSelectActivity;->getCountryBySlotId(I)Ljava/lang/String;

    move-result-object v5

    .line 76
    .local v5, slot1Mcc:Ljava/lang/String;
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lcom/mediatek/calloption/plugin/ESurfingGuideSelectActivity;->getCountryBySlotId(I)Ljava/lang/String;

    move-result-object v6

    .line 77
    .local v6, slot2Mcc:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " onCreate is slot1Mcc : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " slot2Mcc : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/mediatek/calloption/plugin/ESurfingGuideSelectActivity;->log(Ljava/lang/String;)V

    .line 78
    const/4 v10, 0x1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    if-ne v10, v11, :cond_2

    .line 79
    const/4 v10, 0x0

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    check-cast v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 81
    .restart local v2       #simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_2
    if-eqz v2, :cond_3

    .line 82
    iget v7, v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    .line 84
    :cond_3
    const/4 v10, 0x2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    if-ne v10, v11, :cond_4

    if-eqz v5, :cond_4

    if-eqz v6, :cond_4

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 86
    const/4 v7, 0x0

    .line 87
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/mediatek/calloption/plugin/ESurfingGuideSelectActivity;->mIsMultiSim:Z

    .line 89
    :cond_4
    const/4 v10, -0x1

    if-eq v10, v7, :cond_5

    .line 90
    invoke-direct {p0, v7}, Lcom/mediatek/calloption/plugin/ESurfingGuideSelectActivity;->startEsurfingGuideBySlotId(I)V

    .line 91
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 94
    :cond_5
    const/4 v10, 0x2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    if-ne v10, v11, :cond_9

    if-eqz v5, :cond_9

    if-eqz v6, :cond_9

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    .line 96
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/mediatek/calloption/plugin/ESurfingGuideSelectActivity;->mIsMultiSim:Z

    .line 97
    const v10, 0x7f03001f

    invoke-virtual {p0, v10}, Landroid/app/Activity;->setContentView(I)V

    .line 98
    const v10, 0x7f0b0082

    invoke-virtual {p0, v10}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 99
    .local v3, simItem1:Landroid/view/View;
    const v10, 0x7f0b0083

    invoke-virtual {p0, v10}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 100
    .local v4, simItem2:Landroid/view/View;
    const v10, 0x7f0b0084

    invoke-virtual {p0, v10}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 101
    .local v0, cancel:Landroid/widget/Button;
    invoke-virtual {p0, v3}, Lcom/mediatek/calloption/plugin/ESurfingGuideSelectActivity;->createViewHolder(Landroid/view/View;)Lcom/mediatek/calloption/plugin/ESurfingGuideSelectActivity$ViewHolder;

    move-result-object v8

    .line 102
    .local v8, viewHolder1:Lcom/mediatek/calloption/plugin/ESurfingGuideSelectActivity$ViewHolder;
    invoke-virtual {p0, v4}, Lcom/mediatek/calloption/plugin/ESurfingGuideSelectActivity;->createViewHolder(Landroid/view/View;)Lcom/mediatek/calloption/plugin/ESurfingGuideSelectActivity$ViewHolder;

    move-result-object v9

    .line 103
    .local v9, viewHolder2:Lcom/mediatek/calloption/plugin/ESurfingGuideSelectActivity$ViewHolder;
    if-eqz v3, :cond_6

    .line 104
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    :cond_6
    if-eqz v4, :cond_7

    .line 107
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    :cond_7
    if-eqz v0, :cond_8

    .line 110
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    :cond_8
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/mediatek/calloption/plugin/ESurfingGuideSelectActivity;->getSimInfoBySlot(I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v10

    invoke-virtual {p0, v8, v10}, Lcom/mediatek/calloption/plugin/ESurfingGuideSelectActivity;->initItemViewHolder(Lcom/mediatek/calloption/plugin/ESurfingGuideSelectActivity$ViewHolder;Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)V

    .line 114
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lcom/mediatek/calloption/plugin/ESurfingGuideSelectActivity;->getSimInfoBySlot(I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/mediatek/calloption/plugin/ESurfingGuideSelectActivity;->initItemViewHolder(Lcom/mediatek/calloption/plugin/ESurfingGuideSelectActivity$ViewHolder;Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)V

    goto/16 :goto_0

    .line 116
    .end local v0           #cancel:Landroid/widget/Button;
    .end local v3           #simItem1:Landroid/view/View;
    .end local v4           #simItem2:Landroid/view/View;
    .end local v8           #viewHolder1:Lcom/mediatek/calloption/plugin/ESurfingGuideSelectActivity$ViewHolder;
    .end local v9           #viewHolder2:Lcom/mediatek/calloption/plugin/ESurfingGuideSelectActivity$ViewHolder;
    :cond_9
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 270
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 271
    const-string v0, "onDestroy"

    invoke-static {v0}, Lcom/mediatek/calloption/plugin/ESurfingGuideSelectActivity;->log(Ljava/lang/String;)V

    .line 272
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 123
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 124
    const-string v0, "onResume"

    invoke-static {v0}, Lcom/mediatek/calloption/plugin/ESurfingGuideSelectActivity;->log(Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 263
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 264
    const-string v0, "onStop"

    invoke-static {v0}, Lcom/mediatek/calloption/plugin/ESurfingGuideSelectActivity;->log(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 266
    return-void
.end method
