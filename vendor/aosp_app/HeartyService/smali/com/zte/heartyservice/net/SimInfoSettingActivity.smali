.class public Lcom/zte/heartyservice/net/SimInfoSettingActivity;
.super Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;
.source "SimInfoSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/net/SimInfoSettingActivity$CodeNameClickListener;
    }
.end annotation


# static fields
.field public static final NO_NETWORK:I = 0x0

.field public static final NO_WIFI:I = 0x1

.field private static final SIM_INFO_LOCATION:I = 0x0

.field public static final START_TRAFFIC_CORRECTION:Ljava/lang/String; = "START_TRAFFIC_CORRECTION"

.field private static final TAG:Ljava/lang/String; = "SimInfoSettingActivity"

.field private static curSimId:I


# instance fields
.field private mCityGrid:Landroid/widget/GridView;

.field private mCityGridAdapter:Lcom/zte/heartyservice/common/utils/GridAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zte/heartyservice/common/utils/GridAdapter",
            "<",
            "Lcom/zte/heartyservice/net/LocationNode;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurCarrier:Lcom/zte/heartyservice/net/CodeNameItem;

.field private mCurLocation:I

.field private mSimBrandGrid:Landroid/widget/GridView;

.field private mSimBrandGridAdapter:Lcom/zte/heartyservice/common/utils/GridAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zte/heartyservice/common/utils/GridAdapter",
            "<",
            "Lcom/zte/heartyservice/net/CodeNameItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSimCarrier:Landroid/widget/TextView;

.field private mStartTrafficCorrection:Z

.field private mTC:Lcom/zte/heartyservice/net/TrafficCorrectionAPI;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, -0x1

    sput v0, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->curSimId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;-><init>()V

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mCurLocation:I

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mCurCarrier:Lcom/zte/heartyservice/net/CodeNameItem;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mStartTrafficCorrection:Z

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/net/SimInfoSettingActivity;)Lcom/zte/heartyservice/net/CodeNameItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mCurCarrier:Lcom/zte/heartyservice/net/CodeNameItem;

    return-object v0
.end method

.method static synthetic access$002(Lcom/zte/heartyservice/net/SimInfoSettingActivity;Lcom/zte/heartyservice/net/CodeNameItem;)Lcom/zte/heartyservice/net/CodeNameItem;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mCurCarrier:Lcom/zte/heartyservice/net/CodeNameItem;

    return-object p1
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/net/SimInfoSettingActivity;Lcom/zte/heartyservice/net/CodeNameItem;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->refreshCarrierUI(Lcom/zte/heartyservice/net/CodeNameItem;)V

    return-void
.end method

.method static synthetic access$200(Lcom/zte/heartyservice/net/SimInfoSettingActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zte/heartyservice/net/SimInfoSettingActivity;Landroid/app/AlertDialog$Builder;ILjava/lang/String;Lcom/zte/heartyservice/net/CodeNameItem;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->setSingleChoice(Landroid/app/AlertDialog$Builder;ILjava/lang/String;Lcom/zte/heartyservice/net/CodeNameItem;)V

    return-void
.end method

.method static synthetic access$400(Lcom/zte/heartyservice/net/SimInfoSettingActivity;)Landroid/widget/GridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mCityGrid:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/zte/heartyservice/net/SimInfoSettingActivity;)Lcom/zte/heartyservice/common/utils/GridAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mCityGridAdapter:Lcom/zte/heartyservice/common/utils/GridAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/zte/heartyservice/net/SimInfoSettingActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mCurLocation:I

    return v0
.end method

.method static synthetic access$602(Lcom/zte/heartyservice/net/SimInfoSettingActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput p1, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mCurLocation:I

    return p1
.end method

.method static synthetic access$700(Landroid/app/Activity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-static {p0, p1}, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->startSelfReal(Landroid/app/Activity;Z)V

    return-void
.end method

.method static synthetic access$800(Landroid/app/Activity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-static {p0}, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->checkActivityFinish(Landroid/app/Activity;)V

    return-void
.end method

.method private static checkActivityFinish(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 457
    instance-of v0, p0, Lcom/zte/heartyservice/appwidget/TrafficAdjustActivity;

    if-eqz v0, :cond_0

    .line 458
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 460
    :cond_0
    return-void
.end method

.method private initSimInfo()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    .line 243
    const/4 v4, 0x0

    .line 244
    .local v4, curProvince:Lcom/zte/heartyservice/net/CodeNameItem;
    const/4 v3, 0x0

    .line 245
    .local v3, curCity:Lcom/zte/heartyservice/net/CodeNameItem;
    iget-object v8, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mTC:Lcom/zte/heartyservice/net/TrafficCorrectionAPI;

    sget v9, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->curSimId:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/zte/heartyservice/net/TrafficCorrectionAPI;->getCurCodeNameItem(II)Lcom/zte/heartyservice/net/CodeNameItem;

    move-result-object v4

    .line 246
    if-eqz v4, :cond_0

    .line 247
    iget-object v8, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mTC:Lcom/zte/heartyservice/net/TrafficCorrectionAPI;

    sget v9, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->curSimId:I

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lcom/zte/heartyservice/net/TrafficCorrectionAPI;->getCurCodeNameItem(II)Lcom/zte/heartyservice/net/CodeNameItem;

    move-result-object v3

    .line 250
    :cond_0
    iget-object v8, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f07003f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 252
    .local v1, cities:[Ljava/lang/CharSequence;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    array-length v8, v1

    if-ge v5, v8, :cond_2

    .line 253
    iget-object v8, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mTC:Lcom/zte/heartyservice/net/TrafficCorrectionAPI;

    aget-object v9, v1, v5

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/zte/heartyservice/net/TrafficCorrectionAPI;->findLocationByCityName(Ljava/lang/String;)Lcom/zte/heartyservice/net/LocationNode;

    move-result-object v6

    .line 254
    .local v6, l:Lcom/zte/heartyservice/net/LocationNode;
    if-eqz v6, :cond_1

    .line 255
    iget-object v8, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mCityGridAdapter:Lcom/zte/heartyservice/common/utils/GridAdapter;

    invoke-virtual {v8, v6}, Lcom/zte/heartyservice/common/utils/GridAdapter;->add(Ljava/lang/Object;)V

    .line 252
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 259
    .end local v6           #l:Lcom/zte/heartyservice/net/LocationNode;
    :cond_2
    iget-object v8, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mCityGridAdapter:Lcom/zte/heartyservice/common/utils/GridAdapter;

    new-instance v9, Lcom/zte/heartyservice/net/LocationNode;

    invoke-direct {v9}, Lcom/zte/heartyservice/net/LocationNode;-><init>()V

    invoke-virtual {v8, v9}, Lcom/zte/heartyservice/common/utils/GridAdapter;->add(Ljava/lang/Object;)V

    .line 261
    if-eqz v3, :cond_3

    .line 262
    iget-object v8, v3, Lcom/zte/heartyservice/net/CodeNameItem;->mName:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->setLastCityItem(Ljava/lang/String;)V

    .line 265
    :cond_3
    iget-object v8, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mTC:Lcom/zte/heartyservice/net/TrafficCorrectionAPI;

    sget v9, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->curSimId:I

    invoke-virtual {v8, v9, v11}, Lcom/zte/heartyservice/net/TrafficCorrectionAPI;->getCurCodeNameItem(II)Lcom/zte/heartyservice/net/CodeNameItem;

    move-result-object v8

    iput-object v8, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mCurCarrier:Lcom/zte/heartyservice/net/CodeNameItem;

    .line 266
    const/4 v2, 0x0

    .line 267
    .local v2, curBrand:Lcom/zte/heartyservice/net/CodeNameItem;
    iget-object v8, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mCurCarrier:Lcom/zte/heartyservice/net/CodeNameItem;

    if-eqz v8, :cond_4

    .line 268
    iget-object v8, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mTC:Lcom/zte/heartyservice/net/TrafficCorrectionAPI;

    sget v9, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->curSimId:I

    const/4 v10, 0x3

    invoke-virtual {v8, v9, v10}, Lcom/zte/heartyservice/net/TrafficCorrectionAPI;->getCurCodeNameItem(II)Lcom/zte/heartyservice/net/CodeNameItem;

    move-result-object v2

    .line 271
    :cond_4
    iget-object v8, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mCurCarrier:Lcom/zte/heartyservice/net/CodeNameItem;

    if-nez v8, :cond_6

    .line 272
    iget-object v8, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mContext:Landroid/content/Context;

    const-string v9, "phone"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 274
    .local v7, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, carrierCode:Ljava/lang/String;
    const-string v8, "46001"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 276
    const-string v0, "UNICOM"

    .line 284
    :cond_5
    :goto_1
    iget-object v8, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mTC:Lcom/zte/heartyservice/net/TrafficCorrectionAPI;

    const-string v9, ""

    invoke-virtual {v8, v11, v0, v9}, Lcom/zte/heartyservice/net/TrafficCorrectionAPI;->checkItemCode(ILjava/lang/String;Ljava/lang/String;)Lcom/zte/heartyservice/net/CodeNameItem;

    move-result-object v8

    iput-object v8, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mCurCarrier:Lcom/zte/heartyservice/net/CodeNameItem;

    .line 288
    .end local v0           #carrierCode:Ljava/lang/String;
    .end local v7           #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_6
    invoke-direct {p0, v2}, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->refreshCarrierUI(Lcom/zte/heartyservice/net/CodeNameItem;)V

    .line 289
    return-void

    .line 277
    .restart local v0       #carrierCode:Ljava/lang/String;
    .restart local v7       #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_7
    const-string v8, "46000"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    const-string v8, "46002"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    const-string v8, "46007"

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 280
    :cond_8
    const-string v0, "CMCC"

    goto :goto_1

    .line 281
    :cond_9
    const-string v8, "46003"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 282
    const-string v0, "TELECOM"

    goto :goto_1
.end method

.method private optionsItemSelectedHandler(Landroid/view/MenuItem;)Z
    .locals 11
    .parameter "item"

    .prologue
    const v3, 0x7f0a039f

    const v2, 0x7f0a039e

    const/4 v1, -0x1

    const/4 v10, 0x0

    .line 312
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 377
    :goto_0
    return v10

    .line 315
    :sswitch_0
    iget-object v0, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mCityGrid:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getCheckedItemPosition()I

    move-result v8

    .line 316
    .local v8, poition:I
    if-ne v8, v1, :cond_0

    .line 317
    iget-object v0, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mCityGridAdapter:Lcom/zte/heartyservice/common/utils/GridAdapter;

    invoke-virtual {v0, v8}, Lcom/zte/heartyservice/common/utils/GridAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/zte/heartyservice/net/LocationNode;

    .line 323
    .local v7, l:Lcom/zte/heartyservice/net/LocationNode;
    if-eqz v7, :cond_1

    iget-object v0, v7, Lcom/zte/heartyservice/net/LocationNode;->mCity:Lcom/zte/heartyservice/net/CodeNameItem;

    if-eqz v0, :cond_1

    iget-object v0, v7, Lcom/zte/heartyservice/net/LocationNode;->mProvince:Lcom/zte/heartyservice/net/CodeNameItem;

    if-nez v0, :cond_2

    .line 324
    :cond_1
    iget-object v0, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 330
    :cond_2
    iget-object v0, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mCurCarrier:Lcom/zte/heartyservice/net/CodeNameItem;

    if-nez v0, :cond_3

    .line 331
    iget-object v0, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f0a039d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 337
    :cond_3
    iget-object v0, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mSimBrandGrid:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getCheckedItemPosition()I

    move-result v8

    .line 338
    if-ne v8, v1, :cond_4

    .line 339
    iget-object v0, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 344
    :cond_4
    iget-object v0, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mSimBrandGridAdapter:Lcom/zte/heartyservice/common/utils/GridAdapter;

    invoke-virtual {v0, v8}, Lcom/zte/heartyservice/common/utils/GridAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zte/heartyservice/net/CodeNameItem;

    .line 346
    .local v5, simBrand:Lcom/zte/heartyservice/net/CodeNameItem;
    if-nez v5, :cond_5

    .line 347
    iget-object v0, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 353
    :cond_5
    iget-object v0, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mTC:Lcom/zte/heartyservice/net/TrafficCorrectionAPI;

    sget v1, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->curSimId:I

    iget-object v2, v7, Lcom/zte/heartyservice/net/LocationNode;->mProvince:Lcom/zte/heartyservice/net/CodeNameItem;

    iget-object v3, v7, Lcom/zte/heartyservice/net/LocationNode;->mCity:Lcom/zte/heartyservice/net/CodeNameItem;

    iget-object v4, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mCurCarrier:Lcom/zte/heartyservice/net/CodeNameItem;

    invoke-virtual/range {v0 .. v5}, Lcom/zte/heartyservice/net/TrafficCorrectionAPI;->setConfig(ILcom/zte/heartyservice/net/CodeNameItem;Lcom/zte/heartyservice/net/CodeNameItem;Lcom/zte/heartyservice/net/CodeNameItem;Lcom/zte/heartyservice/net/CodeNameItem;)Z

    move-result v9

    .line 355
    .local v9, ret:Z
    if-nez v9, :cond_6

    .line 356
    iget-object v0, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f0a03a1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 362
    :cond_6
    iget-object v0, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mTC:Lcom/zte/heartyservice/net/TrafficCorrectionAPI;

    sget v1, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->curSimId:I

    iget-object v2, v7, Lcom/zte/heartyservice/net/LocationNode;->mProvince:Lcom/zte/heartyservice/net/CodeNameItem;

    iget-object v3, v7, Lcom/zte/heartyservice/net/LocationNode;->mCity:Lcom/zte/heartyservice/net/CodeNameItem;

    iget-object v4, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mCurCarrier:Lcom/zte/heartyservice/net/CodeNameItem;

    invoke-virtual/range {v0 .. v5}, Lcom/zte/heartyservice/net/TrafficCorrectionAPI;->saveConfig(ILcom/zte/heartyservice/net/CodeNameItem;Lcom/zte/heartyservice/net/CodeNameItem;Lcom/zte/heartyservice/net/CodeNameItem;Lcom/zte/heartyservice/net/CodeNameItem;)V

    .line 364
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0e0417

    if-ne v0, v1, :cond_7

    .line 365
    iget-object v0, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mTC:Lcom/zte/heartyservice/net/TrafficCorrectionAPI;

    sget v1, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->curSimId:I

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/net/TrafficCorrectionAPI;->startCorrection(I)V

    .line 367
    :cond_7
    invoke-virtual {p0}, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->finish()V

    goto/16 :goto_0

    .line 370
    .end local v5           #simBrand:Lcom/zte/heartyservice/net/CodeNameItem;
    .end local v7           #l:Lcom/zte/heartyservice/net/LocationNode;
    .end local v8           #poition:I
    .end local v9           #ret:Z
    :sswitch_1
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 371
    .local v6, bundle:Landroid/os/Bundle;
    const-string v0, "subscription"

    sget v1, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->curSimId:I

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 372
    invoke-static {p0, v6}, Lcom/zte/heartyservice/common/utils/AppUtils;->realShowAdjDialog(Landroid/app/Activity;Landroid/os/Bundle;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 312
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e0411 -> :sswitch_0
        0x7f0e0416 -> :sswitch_1
        0x7f0e0417 -> :sswitch_0
    .end sparse-switch
.end method

.method private refreshCarrierUI(Lcom/zte/heartyservice/net/CodeNameItem;)V
    .locals 6
    .parameter "curBrand"

    .prologue
    const/4 v5, 0x1

    .line 95
    iget-object v2, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mCurCarrier:Lcom/zte/heartyservice/net/CodeNameItem;

    if-eqz v2, :cond_1

    .line 96
    iget-object v2, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mSimCarrier:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mCurCarrier:Lcom/zte/heartyservice/net/CodeNameItem;

    iget-object v3, v3, Lcom/zte/heartyservice/net/CodeNameItem;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    :goto_0
    const/4 v0, -0x1

    .line 102
    .local v0, curBrandIndex:I
    iget-object v2, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mSimBrandGrid:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->clearChoices()V

    .line 103
    iget-object v2, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mSimBrandGridAdapter:Lcom/zte/heartyservice/common/utils/GridAdapter;

    invoke-virtual {v2}, Lcom/zte/heartyservice/common/utils/GridAdapter;->clear()V

    .line 104
    iget-object v2, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mCurCarrier:Lcom/zte/heartyservice/net/CodeNameItem;

    if-eqz v2, :cond_3

    .line 105
    iget-object v2, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mTC:Lcom/zte/heartyservice/net/TrafficCorrectionAPI;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mCurCarrier:Lcom/zte/heartyservice/net/CodeNameItem;

    iget-object v4, v4, Lcom/zte/heartyservice/net/CodeNameItem;->mCode:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/zte/heartyservice/net/TrafficCorrectionAPI;->getCodeNameList(ILjava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 107
    .local v1, simBrands:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/net/CodeNameItem;>;"
    iget-object v2, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mSimBrandGridAdapter:Lcom/zte/heartyservice/common/utils/GridAdapter;

    invoke-virtual {v2, v1}, Lcom/zte/heartyservice/common/utils/GridAdapter;->addAll(Ljava/util/Collection;)V

    .line 108
    iget-object v2, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mSimBrandGrid:Landroid/widget/GridView;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 109
    if-eqz p1, :cond_2

    .line 110
    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 117
    .end local v1           #simBrands:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/net/CodeNameItem;>;"
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mSimBrandGrid:Landroid/widget/GridView;

    invoke-virtual {v2, v0, v5}, Landroid/widget/GridView;->setItemChecked(IZ)V

    .line 118
    return-void

    .line 98
    .end local v0           #curBrandIndex:I
    :cond_1
    iget-object v2, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mSimCarrier:Landroid/widget/TextView;

    const v3, 0x7f0a0399

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 111
    .restart local v0       #curBrandIndex:I
    .restart local v1       #simBrands:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/net/CodeNameItem;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 112
    const/4 v0, 0x0

    goto :goto_1

    .line 115
    .end local v1           #simBrands:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/net/CodeNameItem;>;"
    :cond_3
    iget-object v2, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mSimBrandGrid:Landroid/widget/GridView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setNumColumns(I)V

    goto :goto_1
.end method

.method private setLastCityItem(Ljava/lang/String;)V
    .locals 6
    .parameter "name"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 214
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    iget-object v3, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mCityGridAdapter:Lcom/zte/heartyservice/common/utils/GridAdapter;

    invoke-virtual {v3}, Lcom/zte/heartyservice/common/utils/GridAdapter;->getCount()I

    move-result v3

    add-int/lit8 v2, v3, -0x2

    .line 219
    .local v2, lastIndex:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-gt v0, v2, :cond_3

    .line 220
    iget-object v3, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mCityGridAdapter:Lcom/zte/heartyservice/common/utils/GridAdapter;

    invoke-virtual {v3, v0}, Lcom/zte/heartyservice/common/utils/GridAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zte/heartyservice/net/LocationNode;

    iget-object v3, v3, Lcom/zte/heartyservice/net/LocationNode;->mCity:Lcom/zte/heartyservice/net/CodeNameItem;

    iget-object v3, v3, Lcom/zte/heartyservice/net/CodeNameItem;->mName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 221
    iput v0, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mCurLocation:I

    .line 222
    iget-object v3, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mCityGrid:Landroid/widget/GridView;

    iget v4, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mCurLocation:I

    invoke-virtual {v3, v4, v5}, Landroid/widget/GridView;->setItemChecked(IZ)V

    goto :goto_0

    .line 219
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 227
    :cond_3
    iget-object v3, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mTC:Lcom/zte/heartyservice/net/TrafficCorrectionAPI;

    invoke-virtual {v3, p1}, Lcom/zte/heartyservice/net/TrafficCorrectionAPI;->findLocationByCityName(Ljava/lang/String;)Lcom/zte/heartyservice/net/LocationNode;

    move-result-object v1

    .line 228
    .local v1, l:Lcom/zte/heartyservice/net/LocationNode;
    if-eqz v1, :cond_0

    .line 229
    if-ltz v2, :cond_4

    .line 230
    iget-object v3, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mCityGridAdapter:Lcom/zte/heartyservice/common/utils/GridAdapter;

    invoke-virtual {v3, v2}, Lcom/zte/heartyservice/common/utils/GridAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zte/heartyservice/net/LocationNode;

    iget-object v4, v1, Lcom/zte/heartyservice/net/LocationNode;->mProvince:Lcom/zte/heartyservice/net/CodeNameItem;

    iput-object v4, v3, Lcom/zte/heartyservice/net/LocationNode;->mProvince:Lcom/zte/heartyservice/net/CodeNameItem;

    .line 231
    iget-object v3, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mCityGridAdapter:Lcom/zte/heartyservice/common/utils/GridAdapter;

    invoke-virtual {v3, v2}, Lcom/zte/heartyservice/common/utils/GridAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zte/heartyservice/net/LocationNode;

    iget-object v4, v1, Lcom/zte/heartyservice/net/LocationNode;->mCity:Lcom/zte/heartyservice/net/CodeNameItem;

    iput-object v4, v3, Lcom/zte/heartyservice/net/LocationNode;->mCity:Lcom/zte/heartyservice/net/CodeNameItem;

    .line 232
    iget-object v3, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mCityGridAdapter:Lcom/zte/heartyservice/common/utils/GridAdapter;

    invoke-virtual {v3}, Lcom/zte/heartyservice/common/utils/GridAdapter;->notifyDataSetChanged()V

    .line 233
    iput v2, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mCurLocation:I

    .line 238
    :goto_2
    iget-object v3, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mCityGrid:Landroid/widget/GridView;

    iget v4, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mCurLocation:I

    invoke-virtual {v3, v4, v5}, Landroid/widget/GridView;->setItemChecked(IZ)V

    goto :goto_0

    .line 235
    :cond_4
    iget-object v3, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mCityGridAdapter:Lcom/zte/heartyservice/common/utils/GridAdapter;

    invoke-virtual {v3, v1, v4}, Lcom/zte/heartyservice/common/utils/GridAdapter;->insert(Ljava/lang/Object;I)V

    .line 236
    iput v4, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mCurLocation:I

    goto :goto_2
.end method

.method private setSingleChoice(Landroid/app/AlertDialog$Builder;ILjava/lang/String;Lcom/zte/heartyservice/net/CodeNameItem;)V
    .locals 4
    .parameter "alertdlg"
    .parameter "type"
    .parameter "arg"
    .parameter "item"

    .prologue
    .line 122
    iget-object v1, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mTC:Lcom/zte/heartyservice/net/TrafficCorrectionAPI;

    invoke-virtual {v1, p2, p3}, Lcom/zte/heartyservice/net/TrafficCorrectionAPI;->getCodeNameList(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 123
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/net/CodeNameItem;>;"
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mContext:Landroid/content/Context;

    const v3, 0x1090012

    invoke-direct {v1, v2, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-interface {v0, p4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    new-instance v3, Lcom/zte/heartyservice/net/SimInfoSettingActivity$CodeNameClickListener;

    invoke-direct {v3, p0, v0, p2}, Lcom/zte/heartyservice/net/SimInfoSettingActivity$CodeNameClickListener;-><init>(Lcom/zte/heartyservice/net/SimInfoSettingActivity;Ljava/util/List;I)V

    invoke-virtual {p1, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 126
    return-void
.end method

.method public static showNetworkDialg(ILandroid/app/Activity;Z)V
    .locals 6
    .parameter "State"
    .parameter "activity"
    .parameter "start_correction"

    .prologue
    const/4 v5, 0x0

    .line 397
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 398
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 399
    .local v2, msg:Ljava/lang/StringBuilder;
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    if-eqz p2, :cond_0

    .line 401
    const v3, 0x7f0a03a9

    invoke-virtual {p1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    const v3, 0x7f0a03a3

    new-instance v4, Lcom/zte/heartyservice/net/SimInfoSettingActivity$3;

    invoke-direct {v4, p1}, Lcom/zte/heartyservice/net/SimInfoSettingActivity$3;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 412
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0a03a8

    invoke-virtual {p1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 415
    packed-switch p0, :pswitch_data_0

    .line 454
    :goto_1
    return-void

    .line 409
    :cond_0
    const v3, 0x7f0a039b

    invoke-virtual {p1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    const v3, 0x7f0a0174

    invoke-virtual {v0, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 417
    :pswitch_0
    const v3, 0x7f0a03a6

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 418
    if-eqz p2, :cond_1

    .line 419
    const v3, 0x7f0a03aa

    invoke-virtual {v0, v3, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 446
    :cond_1
    :goto_2
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    .line 447
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/zte/heartyservice/common/ui/DialogActivity;->setCustomAlertDialogStyle(Landroid/app/AlertDialog;)V

    .line 448
    new-instance v3, Lcom/zte/heartyservice/net/SimInfoSettingActivity$6;

    invoke-direct {v3, p1}, Lcom/zte/heartyservice/net/SimInfoSettingActivity$6;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_1

    .line 423
    .end local v1           #dialog:Landroid/app/AlertDialog;
    :pswitch_1
    const v3, 0x7f0a03a7

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 425
    if-eqz p2, :cond_2

    .line 426
    const v3, 0x7f0a03a4

    new-instance v4, Lcom/zte/heartyservice/net/SimInfoSettingActivity$4;

    invoke-direct {v4, p1, p2}, Lcom/zte/heartyservice/net/SimInfoSettingActivity$4;-><init>(Landroid/app/Activity;Z)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    .line 434
    :cond_2
    const v3, 0x7f0a031e

    new-instance v4, Lcom/zte/heartyservice/net/SimInfoSettingActivity$5;

    invoke-direct {v4, p1, p2}, Lcom/zte/heartyservice/net/SimInfoSettingActivity$5;-><init>(Landroid/app/Activity;Z)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    .line 415
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static showNetworkDialg(ILandroid/app/Activity;ZI)V
    .locals 6
    .parameter "State"
    .parameter "activity"
    .parameter "start_correction"
    .parameter "subscription"

    .prologue
    const/4 v5, 0x0

    .line 492
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 493
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 494
    .local v2, msg:Ljava/lang/StringBuilder;
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    if-eqz p2, :cond_0

    .line 496
    const v3, 0x7f0a03a9

    invoke-virtual {p1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    const v3, 0x7f0a03a3

    new-instance v4, Lcom/zte/heartyservice/net/SimInfoSettingActivity$7;

    invoke-direct {v4, p3, p1}, Lcom/zte/heartyservice/net/SimInfoSettingActivity$7;-><init>(ILandroid/app/Activity;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 509
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0a03a8

    invoke-virtual {p1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 512
    packed-switch p0, :pswitch_data_0

    .line 551
    :goto_1
    return-void

    .line 506
    :cond_0
    const v3, 0x7f0a039b

    invoke-virtual {p1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    const v3, 0x7f0a0174

    invoke-virtual {v0, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 514
    :pswitch_0
    const v3, 0x7f0a03a6

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 515
    if-eqz p2, :cond_1

    .line 516
    const v3, 0x7f0a03aa

    invoke-virtual {v0, v3, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 543
    :cond_1
    :goto_2
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    .line 544
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/zte/heartyservice/common/ui/DialogActivity;->setCustomAlertDialogStyle(Landroid/app/AlertDialog;)V

    .line 545
    new-instance v3, Lcom/zte/heartyservice/net/SimInfoSettingActivity$10;

    invoke-direct {v3, p1}, Lcom/zte/heartyservice/net/SimInfoSettingActivity$10;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_1

    .line 520
    .end local v1           #dialog:Landroid/app/AlertDialog;
    :pswitch_1
    const v3, 0x7f0a03a7

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 522
    if-eqz p2, :cond_2

    .line 523
    const v3, 0x7f0a03a4

    new-instance v4, Lcom/zte/heartyservice/net/SimInfoSettingActivity$8;

    invoke-direct {v4, p1, p2}, Lcom/zte/heartyservice/net/SimInfoSettingActivity$8;-><init>(Landroid/app/Activity;Z)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    .line 531
    :cond_2
    const v3, 0x7f0a031e

    new-instance v4, Lcom/zte/heartyservice/net/SimInfoSettingActivity$9;

    invoke-direct {v4, p1, p2}, Lcom/zte/heartyservice/net/SimInfoSettingActivity$9;-><init>(Landroid/app/Activity;Z)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    .line 512
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static startSelf(ILandroid/app/Activity;Z)V
    .locals 7
    .parameter "subscription"
    .parameter "activity"
    .parameter "start_correction"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 554
    sput p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->curSimId:I

    .line 555
    const-string v3, "phone"

    invoke-virtual {p1, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 559
    .local v2, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->simIsReady()Z

    move-result v3

    if-nez v3, :cond_0

    .line 560
    const v3, 0x7f0a03ab

    invoke-virtual {p1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 579
    :goto_0
    return-void

    .line 566
    :cond_0
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v3

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 568
    .local v0, connManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 569
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-nez v3, :cond_2

    .line 570
    :cond_1
    invoke-static {v5, p1, p2, p0}, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->showNetworkDialg(ILandroid/app/Activity;ZI)V

    goto :goto_0

    .line 572
    :cond_2
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-eq v3, v6, :cond_3

    .line 573
    invoke-static {v6, p1, p2, p0}, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->showNetworkDialg(ILandroid/app/Activity;ZI)V

    goto :goto_0

    .line 577
    :cond_3
    invoke-static {p1, p2}, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->startSelfReal(Landroid/app/Activity;Z)V

    .line 578
    invoke-static {p1}, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->checkActivityFinish(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public static startSelf(Landroid/app/Activity;Z)V
    .locals 7
    .parameter "activity"
    .parameter "start_correction"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 463
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 467
    .local v2, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->simIsReady()Z

    move-result v3

    if-nez v3, :cond_0

    .line 468
    const v3, 0x7f0a03ab

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 487
    :goto_0
    return-void

    .line 474
    :cond_0
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v3

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 476
    .local v0, connManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 477
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-nez v3, :cond_2

    .line 478
    :cond_1
    invoke-static {v5, p0, p1}, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->showNetworkDialg(ILandroid/app/Activity;Z)V

    goto :goto_0

    .line 480
    :cond_2
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-eq v3, v6, :cond_3

    .line 481
    invoke-static {v6, p0, p1}, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->showNetworkDialg(ILandroid/app/Activity;Z)V

    goto :goto_0

    .line 485
    :cond_3
    invoke-static {p0, p1}, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->startSelfReal(Landroid/app/Activity;Z)V

    .line 486
    invoke-static {p0}, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->checkActivityFinish(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method private static startSelfReal(Landroid/app/Activity;Z)V
    .locals 4
    .parameter "activity"
    .parameter "start_correction"

    .prologue
    .line 383
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/zte/heartyservice/net/SimInfoSettingActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 384
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "START_TRAFFIC_CORRECTION"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 386
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 387
    :catch_0
    move-exception v0

    .line 388
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "SimInfoSettingActivity"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 201
    packed-switch p1, :pswitch_data_0

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 203
    :pswitch_0
    if-eqz p3, :cond_0

    .line 205
    const-string v0, "NAME"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->setLastCityItem(Ljava/lang/String;)V

    goto :goto_0

    .line 201
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 130
    invoke-super {p0, p1}, Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 131
    iput-object p0, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mContext:Landroid/content/Context;

    .line 132
    invoke-virtual {p0}, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "START_TRAFFIC_CORRECTION"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mStartTrafficCorrection:Z

    .line 134
    const v1, 0x7f03006e

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->setContentView(I)V

    .line 135
    const v1, 0x7f0a039a

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->initActionBar(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 136
    invoke-virtual {p0}, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const v2, 0x7f0a03a5

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setSubtitle(I)V

    .line 137
    const v1, 0x7f0e013b

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mSimCarrier:Landroid/widget/TextView;

    .line 138
    const v1, 0x7f0e013c

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mSimBrandGrid:Landroid/widget/GridView;

    .line 139
    const v1, 0x7f0e013d

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mCityGrid:Landroid/widget/GridView;

    .line 141
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getCurrentVirusDBEngine()Lcom/zte/heartyservice/porting/All/VirusDBEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/heartyservice/porting/All/VirusDBEngine;->getTrafficCorrection()Lcom/zte/heartyservice/net/TrafficCorrectionAPI;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mTC:Lcom/zte/heartyservice/net/TrafficCorrectionAPI;

    .line 144
    new-instance v0, Lcom/zte/heartyservice/net/SimInfoSettingActivity$1;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/net/SimInfoSettingActivity$1;-><init>(Lcom/zte/heartyservice/net/SimInfoSettingActivity;)V

    .line 167
    .local v0, onClickListener:Landroid/view/View$OnClickListener;
    new-instance v1, Lcom/zte/heartyservice/common/utils/GridAdapter;

    iget-object v2, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/zte/heartyservice/common/utils/GridAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mCityGridAdapter:Lcom/zte/heartyservice/common/utils/GridAdapter;

    .line 168
    iget-object v1, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mCityGrid:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mCityGridAdapter:Lcom/zte/heartyservice/common/utils/GridAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 169
    new-instance v1, Lcom/zte/heartyservice/common/utils/GridAdapter;

    iget-object v2, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mContext:Landroid/content/Context;

    const v3, 0x7f03005a

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v1, v2, v3, v4}, Lcom/zte/heartyservice/common/utils/GridAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v1, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mSimBrandGridAdapter:Lcom/zte/heartyservice/common/utils/GridAdapter;

    .line 171
    iget-object v1, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mSimBrandGrid:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mSimBrandGridAdapter:Lcom/zte/heartyservice/common/utils/GridAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 173
    invoke-direct {p0}, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->initSimInfo()V

    .line 175
    iget-object v1, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mCityGrid:Landroid/widget/GridView;

    new-instance v2, Lcom/zte/heartyservice/net/SimInfoSettingActivity$2;

    invoke-direct {v2, p0}, Lcom/zte/heartyservice/net/SimInfoSettingActivity$2;-><init>(Lcom/zte/heartyservice/net/SimInfoSettingActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 196
    iget-object v1, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mSimCarrier:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 298
    iget-boolean v0, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mStartTrafficCorrection:Z

    if-eqz v0, :cond_0

    .line 299
    invoke-virtual {p0}, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0014

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 303
    :goto_0
    invoke-super {p0, p1}, Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 301
    :cond_0
    invoke-virtual {p0}, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d000f

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 308
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->optionsItemSelectedHandler(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 293
    invoke-super {p0}, Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;->onResume()V

    .line 294
    return-void
.end method
