.class public Lcom/mediatek/op/telephony/OP09TelephonyProviderExt;
.super Lcom/mediatek/op/telephony/TelephonyProviderExt;
.source "OP09TelephonyProviderExt.java"


# static fields
.field private static final CT_APN_NET:Ljava/lang/String; = "ctnet"

.field private static final CT_APN_WAP:Ljava/lang/String; = "ctwap"

.field private static final CT_MCC_ARRAY:[Ljava/lang/String; = null

.field private static final CT_NUMERIC_ARRAY:[Ljava/lang/String; = null

.field private static final GEMINI_URI:Landroid/net/Uri; = null

.field private static final GEMINI_URI_2:Landroid/net/Uri; = null

.field private static final TAG:Ljava/lang/String; = "OP09TelephonyProviderExt"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mUpdateTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 30
    sget-object v0, Landroid/provider/Telephony$Carriers$SIM1Carriers;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/mediatek/op/telephony/OP09TelephonyProviderExt;->GEMINI_URI:Landroid/net/Uri;

    .line 31
    sget-object v0, Landroid/provider/Telephony$Carriers$SIM2Carriers;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/mediatek/op/telephony/OP09TelephonyProviderExt;->GEMINI_URI_2:Landroid/net/Uri;

    .line 37
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "46003"

    aput-object v1, v0, v2

    const-string v1, "45502"

    aput-object v1, v0, v3

    const-string v1, "20404"

    aput-object v1, v0, v4

    sput-object v0, Lcom/mediatek/op/telephony/OP09TelephonyProviderExt;->CT_NUMERIC_ARRAY:[Ljava/lang/String;

    .line 39
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "460"

    aput-object v1, v0, v2

    const-string v1, "455"

    aput-object v1, v0, v3

    const-string v1, "204"

    aput-object v1, v0, v4

    sput-object v0, Lcom/mediatek/op/telephony/OP09TelephonyProviderExt;->CT_MCC_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/mediatek/op/telephony/TelephonyProviderExt;-><init>()V

    .line 42
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/mediatek/op/telephony/OP09TelephonyProviderExt;->mUpdateTable:Ljava/util/HashMap;

    .line 44
    new-instance v1, Lcom/mediatek/op/telephony/OP09TelephonyProviderExt$1;

    invoke-direct {v1, p0}, Lcom/mediatek/op/telephony/OP09TelephonyProviderExt$1;-><init>(Lcom/mediatek/op/telephony/OP09TelephonyProviderExt;)V

    iput-object v1, p0, Lcom/mediatek/op/telephony/OP09TelephonyProviderExt;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 61
    iput-object p1, p0, Lcom/mediatek/op/telephony/OP09TelephonyProviderExt;->mContext:Landroid/content/Context;

    .line 66
    iget-object v1, p0, Lcom/mediatek/op/telephony/OP09TelephonyProviderExt;->mUpdateTable:Ljava/util/HashMap;

    const-string v2, "ctnet"

    const v3, 0x205012c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v1, p0, Lcom/mediatek/op/telephony/OP09TelephonyProviderExt;->mUpdateTable:Ljava/util/HashMap;

    const-string v2, "ctwap"

    const v3, 0x205012d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 74
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/mediatek/op/telephony/OP09TelephonyProviderExt;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/op/telephony/OP09TelephonyProviderExt;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/op/telephony/OP09TelephonyProviderExt;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/mediatek/op/telephony/OP09TelephonyProviderExt;->setOpApnName()V

    return-void
.end method

.method private checkRowByNumeric(Landroid/content/ContentValues;)Z
    .locals 5
    .parameter "row"

    .prologue
    .line 131
    if-eqz p1, :cond_1

    .line 132
    sget-object v0, Lcom/mediatek/op/telephony/OP09TelephonyProviderExt;->CT_NUMERIC_ARRAY:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 133
    .local v2, item:Ljava/lang/String;
    const-string v4, "numeric"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 134
    const/4 v4, 0x1

    .line 138
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #item:Ljava/lang/String;
    .end local v3           #len$:I
    :goto_1
    return v4

    .line 132
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #i$:I
    .restart local v2       #item:Ljava/lang/String;
    .restart local v3       #len$:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 138
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #item:Ljava/lang/String;
    .end local v3           #len$:I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private getApnNameByKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "key"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/mediatek/op/telephony/OP09TelephonyProviderExt;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v0, p0, Lcom/mediatek/op/telephony/OP09TelephonyProviderExt;->mUpdateTable:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSelection(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "apn"
    .parameter "mcc"

    .prologue
    .line 119
    const-string v0, "ctnet"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "apn = \'ctnet\' and mcc = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' and type like \'%default%\' and sourcetype <> 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 126
    :goto_0
    return-object v0

    .line 122
    :cond_0
    const-string v0, "ctwap"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "apn = \'ctwap\' and mcc = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' and type like \'%mms%\' and sourcetype <> 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 126
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setOpApnName()V
    .locals 10

    .prologue
    .line 94
    const-string v7, "OP09TelephonyProviderExt"

    const-string v8, "[Op09]setOpApnName for language changed"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v7, p0, Lcom/mediatek/op/telephony/OP09TelephonyProviderExt;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 97
    .local v6, updateResolver:Landroid/content/ContentResolver;
    sget-object v0, Lcom/mediatek/op/telephony/OP09TelephonyProviderExt;->CT_MCC_ARRAY:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    move v2, v1

    .end local v1           #i$:I
    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v5, v0, v2

    .line 98
    .local v5, mcc:Ljava/lang/String;
    iget-object v7, p0, Lcom/mediatek/op/telephony/OP09TelephonyProviderExt;->mUpdateTable:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v2           #i$:I
    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 99
    .local v3, key:Ljava/lang/String;
    invoke-direct {p0, v3, v5}, Lcom/mediatek/op/telephony/OP09TelephonyProviderExt;->getSelection(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v3}, Lcom/mediatek/op/telephony/OP09TelephonyProviderExt;->getApnNameByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v8}, Lcom/mediatek/op/telephony/OP09TelephonyProviderExt;->updateApnName(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v7, "OP09TelephonyProviderExt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[op09]setOpApnName, sql = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0, v3, v5}, Lcom/mediatek/op/telephony/OP09TelephonyProviderExt;->getSelection(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "name = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0, v3}, Lcom/mediatek/op/telephony/OP09TelephonyProviderExt;->getApnNameByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 97
    .end local v3           #key:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v2, 0x1

    .local v1, i$:I
    move v2, v1

    .end local v1           #i$:I
    .restart local v2       #i$:I
    goto :goto_0

    .line 105
    .end local v5           #mcc:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private updateApnName(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "upddateResolver"
    .parameter "selection"
    .parameter "apnName"

    .prologue
    const/4 v2, 0x0

    .line 109
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 110
    .local v0, updateValues:Landroid/content/ContentValues;
    const-string v1, "name"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    sget-object v1, Lcom/mediatek/op/telephony/OP09TelephonyProviderExt;->GEMINI_URI:Landroid/net/Uri;

    invoke-virtual {p1, v1, v0, p2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 114
    sget-object v1, Lcom/mediatek/op/telephony/OP09TelephonyProviderExt;->GEMINI_URI_2:Landroid/net/Uri;

    invoke-virtual {p1, v1, v0, p2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 116
    return-void
.end method


# virtual methods
.method public onLoadApns(Landroid/content/ContentValues;)I
    .locals 5
    .parameter "row"

    .prologue
    .line 79
    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/mediatek/op/telephony/OP09TelephonyProviderExt;->checkRowByNumeric(Landroid/content/ContentValues;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 80
    :cond_0
    const/4 v2, -0x1

    .line 90
    :goto_0
    return v2

    .line 82
    :cond_1
    iget-object v2, p0, Lcom/mediatek/op/telephony/OP09TelephonyProviderExt;->mUpdateTable:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 83
    .local v1, key:Ljava/lang/String;
    const-string v2, "apn"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 84
    const-string v2, "name"

    invoke-direct {p0, v1}, Lcom/mediatek/op/telephony/OP09TelephonyProviderExt;->getApnNameByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v2, "OP09TelephonyProviderExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[op09]onLoadApns update key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/mediatek/op/telephony/OP09TelephonyProviderExt;->getApnNameByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .end local v1           #key:Ljava/lang/String;
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method
