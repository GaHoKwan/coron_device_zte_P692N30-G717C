.class public Lcom/android/systemui/statusbar/toolbar/SimIconsListView;
.super Landroid/widget/ListView;
.source "SimIconsListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/toolbar/SimIconsListView$SimItem;,
        Lcom/android/systemui/statusbar/toolbar/SimIconsListView$SimInfotListAdapter;,
        Lcom/android/systemui/statusbar/toolbar/SimIconsListView$SimInfoViewHolder;
    }
.end annotation


# static fields
.field private static final CUMCCMNC:Ljava/lang/String; = "46001"

.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "SimIconsListView"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mSelectedSimId:J

.field private mServiceType:Ljava/lang/String;

.field private mSimInfotListAdapter:Lcom/android/systemui/statusbar/toolbar/SimIconsListView$SimInfotListAdapter;

.field private mSimItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/toolbar/SimIconsListView$SimItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "serviceType"

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/toolbar/SimIconsListView;->mSimItems:Ljava/util/List;

    .line 48
    new-instance v0, Lcom/android/systemui/statusbar/toolbar/SimIconsListView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/toolbar/SimIconsListView$1;-><init>(Lcom/android/systemui/statusbar/toolbar/SimIconsListView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/toolbar/SimIconsListView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 60
    iput-object p1, p0, Lcom/android/systemui/statusbar/toolbar/SimIconsListView;->mContext:Landroid/content/Context;

    .line 61
    iput-object p2, p0, Lcom/android/systemui/statusbar/toolbar/SimIconsListView;->mServiceType:Ljava/lang/String;

    .line 62
    invoke-direct {p0}, Lcom/android/systemui/statusbar/toolbar/SimIconsListView;->initListViews()V

    .line 63
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/toolbar/SimIconsListView;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/statusbar/toolbar/SimIconsListView;->mSimItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/toolbar/SimIconsListView;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/android/systemui/statusbar/toolbar/SimIconsListView;->mSelectedSimId:J

    return-wide v0
.end method

.method private initListViews()V
    .locals 3

    .prologue
    .line 66
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 67
    .local v0, mIntentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SIM_INDICATOR_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 68
    iget-object v1, p0, Lcom/android/systemui/statusbar/toolbar/SimIconsListView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/toolbar/SimIconsListView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 69
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 70
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/toolbar/SimIconsListView;->initSimList()V

    .line 71
    new-instance v1, Lcom/android/systemui/statusbar/toolbar/SimIconsListView$SimInfotListAdapter;

    iget-object v2, p0, Lcom/android/systemui/statusbar/toolbar/SimIconsListView;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/toolbar/SimIconsListView$SimInfotListAdapter;-><init>(Lcom/android/systemui/statusbar/toolbar/SimIconsListView;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/toolbar/SimIconsListView;->mSimInfotListAdapter:Lcom/android/systemui/statusbar/toolbar/SimIconsListView$SimInfotListAdapter;

    .line 72
    iget-object v1, p0, Lcom/android/systemui/statusbar/toolbar/SimIconsListView;->mSimInfotListAdapter:Lcom/android/systemui/statusbar/toolbar/SimIconsListView$SimInfotListAdapter;

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 73
    return-void
.end method


# virtual methods
.method public initSimList()V
    .locals 13

    .prologue
    .line 268
    iget-object v1, p0, Lcom/android/systemui/statusbar/toolbar/SimIconsListView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/toolbar/SimIconsListView;->mServiceType:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/util/SIMHelper;->getDefaultSIM(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/systemui/statusbar/toolbar/SimIconsListView;->mSelectedSimId:J

    .line 270
    iget-object v1, p0, Lcom/android/systemui/statusbar/toolbar/SimIconsListView;->mSimItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 274
    iget-object v1, p0, Lcom/android/systemui/statusbar/toolbar/SimIconsListView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/statusbar/util/SIMHelper;->getSIMInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v11

    .line 275
    .local v11, simList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    if-eqz v11, :cond_0

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    if-ge v7, v1, :cond_5

    .line 279
    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 280
    .local v10, simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    const-string v9, ""

    .line 282
    .local v9, numeric:Ljava/lang/String;
    iget v1, v10, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 283
    const-string v1, "gsm.sim.operator.numeric.2"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 291
    :cond_2
    :goto_2
    const-string v1, "46001"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 292
    const-string v1, "SimIconsListView"

    const-string v2, "IsAllCUCard = true;"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 284
    :cond_4
    iget v1, v10, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    .line 286
    iget v1, v10, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    .line 289
    const-string v1, "gsm.sim.operator.numeric"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    .line 296
    .end local v9           #numeric:Ljava/lang/String;
    .end local v10           #simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/toolbar/SimIconsListView;->mServiceType:Ljava/lang/String;

    const-string v2, "video_call_sim_setting"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 297
    iget-object v1, p0, Lcom/android/systemui/statusbar/toolbar/SimIconsListView;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v10

    .line 298
    .restart local v10       #simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v10, :cond_0

    .line 299
    new-instance v0, Lcom/android/systemui/statusbar/toolbar/SimIconsListView$SimItem;

    invoke-direct {v0, p0, v10}, Lcom/android/systemui/statusbar/toolbar/SimIconsListView$SimItem;-><init>(Lcom/android/systemui/statusbar/toolbar/SimIconsListView;Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)V

    .line 300
    .local v0, simitem:Lcom/android/systemui/statusbar/toolbar/SimIconsListView$SimItem;
    iget v1, v10, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-static {v1}, Lcom/android/systemui/statusbar/util/SIMHelper;->getSimIndicatorStateGemini(I)I

    move-result v12

    .line 301
    .local v12, state:I
    iput v12, v0, Lcom/android/systemui/statusbar/toolbar/SimIconsListView$SimItem;->mState:I

    .line 302
    iget-object v1, p0, Lcom/android/systemui/statusbar/toolbar/SimIconsListView;->mSimItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 307
    .end local v0           #simitem:Lcom/android/systemui/statusbar/toolbar/SimIconsListView$SimItem;
    .end local v10           #simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    .end local v12           #state:I
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/toolbar/SimIconsListView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mediatek/systemui/ext/PluginFactory;->getStatusBarPlugin(Landroid/content/Context;)Lcom/mediatek/systemui/ext/IStatusBarPlugin;

    move-result-object v1

    invoke-interface {v1}, Lcom/mediatek/systemui/ext/IStatusBarPlugin;->supportDataConnectInTheFront()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 309
    const/16 v8, -0xa

    .line 311
    .local v8, mainSimID:I
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/toolbar/SimIconsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "ct_main_sim_selection"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 317
    :goto_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/toolbar/SimIconsListView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/statusbar/util/SIMHelper;->isInternationalRoamingStatus(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 318
    const/4 v8, 0x0

    .line 320
    :cond_7
    const-string v1, "SimIconsListView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initSimList Settings.System.getInt main SIM id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v1, p0, Lcom/android/systemui/statusbar/toolbar/SimIconsListView;->mContext:Landroid/content/Context;

    invoke-static {v1, v8}, Lcom/android/systemui/statusbar/util/SIMHelper;->getSIMInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v10

    .line 322
    .restart local v10       #simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v10, :cond_8

    .line 323
    new-instance v0, Lcom/android/systemui/statusbar/toolbar/SimIconsListView$SimItem;

    invoke-direct {v0, p0, v10}, Lcom/android/systemui/statusbar/toolbar/SimIconsListView$SimItem;-><init>(Lcom/android/systemui/statusbar/toolbar/SimIconsListView;Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)V

    .line 324
    .restart local v0       #simitem:Lcom/android/systemui/statusbar/toolbar/SimIconsListView$SimItem;
    iget v1, v10, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-static {v1}, Lcom/android/systemui/statusbar/util/SIMHelper;->getSimIndicatorStateGemini(I)I

    move-result v12

    .line 325
    .restart local v12       #state:I
    iput v12, v0, Lcom/android/systemui/statusbar/toolbar/SimIconsListView$SimItem;->mState:I

    .line 326
    iget-object v1, p0, Lcom/android/systemui/statusbar/toolbar/SimIconsListView;->mSimItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
    .end local v0           #simitem:Lcom/android/systemui/statusbar/toolbar/SimIconsListView$SimItem;
    .end local v8           #mainSimID:I
    .end local v10           #simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    .end local v12           #state:I
    :cond_8
    iget-object v1, p0, Lcom/android/systemui/statusbar/toolbar/SimIconsListView;->mServiceType:Ljava/lang/String;

    const-string v2, "gprs_connection_sim_setting"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 340
    new-instance v0, Lcom/android/systemui/statusbar/toolbar/SimIconsListView$SimItem;

    iget-object v1, p0, Lcom/android/systemui/statusbar/toolbar/SimIconsListView;->mContext:Landroid/content/Context;

    const v2, 0x7f0b001e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    const-wide/16 v4, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/toolbar/SimIconsListView$SimItem;-><init>(Lcom/android/systemui/statusbar/toolbar/SimIconsListView;Ljava/lang/String;IJ)V

    .line 342
    .restart local v0       #simitem:Lcom/android/systemui/statusbar/toolbar/SimIconsListView$SimItem;
    iget-object v1, p0, Lcom/android/systemui/statusbar/toolbar/SimIconsListView;->mSimItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 312
    .end local v0           #simitem:Lcom/android/systemui/statusbar/toolbar/SimIconsListView$SimItem;
    .restart local v8       #mainSimID:I
    :catch_0
    move-exception v6

    .line 313
    .local v6, e:Ljava/lang/Exception;
    const/4 v8, 0x0

    .line 314
    const-string v1, "SimIconsListView"

    const-string v2, "initSimList Settings.System.getInt Exception!"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 329
    .end local v6           #e:Ljava/lang/Exception;
    .end local v8           #mainSimID:I
    :cond_9
    const/4 v7, 0x0

    :goto_4
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    if-ge v7, v1, :cond_8

    .line 330
    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 331
    .restart local v10       #simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v10, :cond_a

    .line 332
    new-instance v0, Lcom/android/systemui/statusbar/toolbar/SimIconsListView$SimItem;

    invoke-direct {v0, p0, v10}, Lcom/android/systemui/statusbar/toolbar/SimIconsListView$SimItem;-><init>(Lcom/android/systemui/statusbar/toolbar/SimIconsListView;Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)V

    .line 333
    .restart local v0       #simitem:Lcom/android/systemui/statusbar/toolbar/SimIconsListView$SimItem;
    iget v1, v10, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-static {v1}, Lcom/android/systemui/statusbar/util/SIMHelper;->getSimIndicatorStateGemini(I)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/toolbar/SimIconsListView$SimItem;->mState:I

    .line 334
    iget-object v1, p0, Lcom/android/systemui/statusbar/toolbar/SimIconsListView;->mSimItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    .end local v0           #simitem:Lcom/android/systemui/statusbar/toolbar/SimIconsListView$SimItem;
    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_4
.end method

.method public notifyDataChange()V
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/systemui/statusbar/toolbar/SimIconsListView;->mSimInfotListAdapter:Lcom/android/systemui/statusbar/toolbar/SimIconsListView$SimInfotListAdapter;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/android/systemui/statusbar/toolbar/SimIconsListView;->mSimInfotListAdapter:Lcom/android/systemui/statusbar/toolbar/SimIconsListView$SimInfotListAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 350
    :cond_0
    return-void
.end method

.method public updateResources()V
    .locals 3

    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/systemui/statusbar/toolbar/SimIconsListView;->mSimItems:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/toolbar/SimIconsListView;->mSimItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/android/systemui/statusbar/toolbar/SimIconsListView;->mServiceType:Ljava/lang/String;

    const-string v1, "gprs_connection_sim_setting"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/android/systemui/statusbar/toolbar/SimIconsListView;->mSimItems:Ljava/util/List;

    iget-object v1, p0, Lcom/android/systemui/statusbar/toolbar/SimIconsListView;->mSimItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/toolbar/SimIconsListView$SimItem;

    iget-object v1, p0, Lcom/android/systemui/statusbar/toolbar/SimIconsListView;->mContext:Landroid/content/Context;

    const v2, 0x7f0b001e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/toolbar/SimIconsListView$SimItem;->mName:Ljava/lang/String;

    .line 358
    :cond_0
    return-void
.end method
