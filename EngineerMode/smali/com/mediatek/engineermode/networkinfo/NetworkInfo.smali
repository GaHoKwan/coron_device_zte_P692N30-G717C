.class public Lcom/mediatek/engineermode/networkinfo/NetworkInfo;
.super Landroid/app/Activity;
.source "NetworkInfo.java"


# static fields
.field private static final CHECK_INFOMATION_ID:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "NetworkInfo"

.field public static final MODEM_FDD:I = 0x1

.field public static final MODEM_MASK_EDGE:I = 0x2

.field public static final MODEM_MASK_GPRS:I = 0x1

.field public static final MODEM_MASK_HSDPA:I = 0x10

.field public static final MODEM_MASK_HSUPA:I = 0x20

.field public static final MODEM_MASK_TDSCDMA:I = 0x8

.field public static final MODEM_MASK_WCDMA:I = 0x4

.field public static final MODEM_NO3G:I = 0x3

.field public static final MODEM_NONE:I = -0x1

.field public static final MODEM_TD:I = 0x2

.field public static final TOTAL_ITEM_NUM:I = 0xbe

.field private static sModemType:I


# instance fields
.field private mCheckBox:[Landroid/widget/CheckBox;

.field private mChecked:[I

.field private mSimType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, -0x1

    sput v0, Lcom/mediatek/engineermode/networkinfo/NetworkInfo;->sModemType:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static getModemType(I)I
    .locals 3
    .parameter "simType"

    .prologue
    .line 77
    invoke-static {p0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfo;->getModemTypeFromSysProperty(I)I

    move-result v0

    sput v0, Lcom/mediatek/engineermode/networkinfo/NetworkInfo;->sModemType:I

    .line 78
    const-string v0, "NetworkInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "modem type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/mediatek/engineermode/networkinfo/NetworkInfo;->sModemType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    sget v0, Lcom/mediatek/engineermode/networkinfo/NetworkInfo;->sModemType:I

    return v0
.end method

.method private static getModemTypeFromSysProperty(I)I
    .locals 6
    .parameter "simType"

    .prologue
    .line 86
    const-string v4, "gsm.baseband.capability"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 87
    .local v3, mt:Ljava/lang/String;
    if-lez p0, :cond_0

    .line 88
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, p0, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 91
    :cond_0
    const/4 v2, 0x3

    .line 92
    .local v2, mode:I
    if-nez v3, :cond_1

    .line 93
    const/4 v2, 0x3

    .line 109
    :goto_0
    return v2

    .line 96
    :cond_1
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 97
    .local v1, mask:I
    and-int/lit8 v4, v1, 0x8

    if-nez v4, :cond_2

    .line 98
    const/4 v2, 0x1

    goto :goto_0

    .line 99
    :cond_2
    and-int/lit8 v4, v1, 0x4

    if-nez v4, :cond_3

    .line 100
    const/4 v2, 0x2

    goto :goto_0

    .line 102
    :cond_3
    const/4 v2, 0x3

    goto :goto_0

    .line 104
    .end local v1           #mask:I
    :catch_0
    move-exception v0

    .line 105
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v2, 0x3

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/16 v9, 0xbe

    const/4 v7, 0x0

    const/16 v8, 0x8

    .line 114
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 116
    const v5, 0x7f030064

    invoke-virtual {p0, v5}, Landroid/app/Activity;->setContentView(I)V

    .line 117
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 118
    .local v1, intent:Landroid/content/Intent;
    const-string v5, "mSimType"

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfo;->mSimType:I

    .line 119
    iget v5, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfo;->mSimType:I

    invoke-static {v5}, Lcom/mediatek/engineermode/networkinfo/NetworkInfo;->getModemTypeFromSysProperty(I)I

    move-result v5

    sput v5, Lcom/mediatek/engineermode/networkinfo/NetworkInfo;->sModemType:I

    .line 121
    new-array v5, v9, [Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfo;->mCheckBox:[Landroid/widget/CheckBox;

    .line 122
    new-array v5, v9, [I

    iput-object v5, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfo;->mChecked:[I

    .line 124
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v9, :cond_0

    .line 125
    iget-object v5, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfo;->mCheckBox:[Landroid/widget/CheckBox;

    const/4 v6, 0x0

    aput-object v6, v5, v0

    .line 126
    iget-object v5, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfo;->mChecked:[I

    aput v7, v5, v0

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 129
    :cond_0
    iget-object v6, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfo;->mCheckBox:[Landroid/widget/CheckBox;

    const v5, 0x7f0b033d

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    aput-object v5, v6, v7

    .line 130
    iget-object v6, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfo;->mCheckBox:[Landroid/widget/CheckBox;

    const v5, 0x7f0b033e

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    aput-object v5, v6, v10

    .line 131
    iget-object v6, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfo;->mCheckBox:[Landroid/widget/CheckBox;

    const v5, 0x7f0b033f

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    aput-object v5, v6, v11

    .line 132
    iget-object v6, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfo;->mCheckBox:[Landroid/widget/CheckBox;

    const/4 v7, 0x3

    const v5, 0x7f0b0340

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    aput-object v5, v6, v7

    .line 133
    iget-object v6, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfo;->mCheckBox:[Landroid/widget/CheckBox;

    const/4 v7, 0x4

    const v5, 0x7f0b0341

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    aput-object v5, v6, v7

    .line 134
    iget-object v6, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfo;->mCheckBox:[Landroid/widget/CheckBox;

    const/4 v7, 0x5

    const v5, 0x7f0b0342

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    aput-object v5, v6, v7

    .line 135
    iget-object v6, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfo;->mCheckBox:[Landroid/widget/CheckBox;

    const/4 v7, 0x6

    const v5, 0x7f0b0343

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    aput-object v5, v6, v7

    .line 136
    iget-object v6, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfo;->mCheckBox:[Landroid/widget/CheckBox;

    const/4 v7, 0x7

    const v5, 0x7f0b0344

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    aput-object v5, v6, v7

    .line 137
    iget-object v6, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfo;->mCheckBox:[Landroid/widget/CheckBox;

    const v5, 0x7f0b0345

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    aput-object v5, v6, v8

    .line 138
    iget-object v6, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfo;->mCheckBox:[Landroid/widget/CheckBox;

    const/16 v7, 0x9

    const v5, 0x7f0b0346

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    aput-object v5, v6, v7

    .line 139
    iget-object v6, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfo;->mCheckBox:[Landroid/widget/CheckBox;

    const/16 v7, 0xa

    const v5, 0x7f0b0347

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    aput-object v5, v6, v7

    .line 140
    iget-object v6, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfo;->mCheckBox:[Landroid/widget/CheckBox;

    const/16 v7, 0xb

    const v5, 0x7f0b0348

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    aput-object v5, v6, v7

    .line 141
    iget-object v6, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfo;->mCheckBox:[Landroid/widget/CheckBox;

    const/16 v7, 0xc

    const v5, 0x7f0b0349

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    aput-object v5, v6, v7

    .line 142
    iget-object v6, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfo;->mCheckBox:[Landroid/widget/CheckBox;

    const/16 v7, 0xd

    const v5, 0x7f0b034a

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    aput-object v5, v6, v7

    .line 144
    iget-object v6, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfo;->mCheckBox:[Landroid/widget/CheckBox;

    const/16 v7, 0x35

    const v5, 0x7f0b034d

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    aput-object v5, v6, v7

    .line 145
    iget-object v6, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfo;->mCheckBox:[Landroid/widget/CheckBox;

    const/16 v7, 0x3b

    const v5, 0x7f0b034e

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    aput-object v5, v6, v7

    .line 147
    iget-object v6, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfo;->mCheckBox:[Landroid/widget/CheckBox;

    const/16 v7, 0x4b

    const v5, 0x7f0b034f

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    aput-object v5, v6, v7

    .line 151
    iget-object v6, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfo;->mCheckBox:[Landroid/widget/CheckBox;

    const/16 v7, 0x4c

    const v5, 0x7f0b034b

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    aput-object v5, v6, v7

    .line 155
    iget-object v6, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfo;->mCheckBox:[Landroid/widget/CheckBox;

    const/16 v7, 0x51

    const v5, 0x7f0b0350

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    aput-object v5, v6, v7

    .line 157
    iget-object v6, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfo;->mCheckBox:[Landroid/widget/CheckBox;

    const/16 v7, 0x63

    const v5, 0x7f0b0351

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    aput-object v5, v6, v7

    .line 159
    iget-object v6, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfo;->mCheckBox:[Landroid/widget/CheckBox;

    const/16 v7, 0x6f

    const v5, 0x7f0b0352

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    aput-object v5, v6, v7

    .line 160
    iget-object v6, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfo;->mCheckBox:[Landroid/widget/CheckBox;

    const/16 v7, 0x9b

    const v5, 0x7f0b0353

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    aput-object v5, v6, v7

    .line 162
    const v5, 0x7f0b0354

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 163
    .local v3, view3GFDD:Landroid/view/View;
    const v5, 0x7f0b0357

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 164
    .local v4, view3GTDD:Landroid/view/View;
    const v5, 0x7f0b034c

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 165
    .local v2, view3GCommon:Landroid/view/View;
    iget v5, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfo;->mSimType:I

    if-nez v5, :cond_3

    .line 166
    sget v5, Lcom/mediatek/engineermode/networkinfo/NetworkInfo;->sModemType:I

    if-ne v5, v10, :cond_1

    .line 167
    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 168
    iget-object v6, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfo;->mCheckBox:[Landroid/widget/CheckBox;

    const/16 v7, 0x5a

    const v5, 0x7f0b0355

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    aput-object v5, v6, v7

    .line 170
    iget-object v6, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfo;->mCheckBox:[Landroid/widget/CheckBox;

    const/16 v7, 0x8c

    const v5, 0x7f0b0356

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    aput-object v5, v6, v7

    .line 196
    :goto_1
    return-void

    .line 172
    :cond_1
    sget v5, Lcom/mediatek/engineermode/networkinfo/NetworkInfo;->sModemType:I

    if-ne v5, v11, :cond_2

    .line 173
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 174
    iget-object v6, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfo;->mCheckBox:[Landroid/widget/CheckBox;

    const/16 v7, 0x82

    const v5, 0x7f0b0358

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    aput-object v5, v6, v7

    .line 176
    iget-object v6, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfo;->mCheckBox:[Landroid/widget/CheckBox;

    const/16 v7, 0xb9

    const v5, 0x7f0b0359

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    aput-object v5, v6, v7

    .line 178
    iget-object v6, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfo;->mCheckBox:[Landroid/widget/CheckBox;

    const/16 v7, 0xba

    const v5, 0x7f0b035a

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    aput-object v5, v6, v7

    .line 180
    iget-object v6, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfo;->mCheckBox:[Landroid/widget/CheckBox;

    const/16 v7, 0xbb

    const v5, 0x7f0b035b

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    aput-object v5, v6, v7

    .line 182
    iget-object v6, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfo;->mCheckBox:[Landroid/widget/CheckBox;

    const/16 v7, 0xbc

    const v5, 0x7f0b035c

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    aput-object v5, v6, v7

    .line 184
    iget-object v6, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfo;->mCheckBox:[Landroid/widget/CheckBox;

    const/16 v7, 0xbd

    const v5, 0x7f0b035d

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    aput-object v5, v6, v7

    goto :goto_1

    .line 187
    :cond_2
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 188
    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 189
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 192
    :cond_3
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 193
    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 194
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 200
    const v0, 0x7f08046f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 201
    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "aMenuItem"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 207
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 239
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    return v3

    .line 209
    :pswitch_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 210
    .local v2, isAnyChechked:Ljava/lang/Boolean;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/16 v3, 0xbe

    if-ge v0, v3, :cond_2

    .line 211
    iget-object v3, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfo;->mCheckBox:[Landroid/widget/CheckBox;

    aget-object v3, v3, v0

    if-nez v3, :cond_0

    .line 210
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 214
    :cond_0
    iget-object v3, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfo;->mCheckBox:[Landroid/widget/CheckBox;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 215
    iget-object v3, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfo;->mChecked:[I

    aput v5, v3, v0

    .line 216
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_2

    .line 218
    :cond_1
    iget-object v3, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfo;->mChecked:[I

    aput v4, v3, v0

    goto :goto_2

    .line 221
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_3

    .line 222
    const v3, 0x7f080470

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 225
    :cond_3
    iget v3, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfo;->mSimType:I

    if-nez v3, :cond_4

    const-string v3, "OP09"

    const-string v4, "ro.operator.optr"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 227
    const v3, 0x7f080479

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 230
    :cond_4
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 231
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "mChecked"

    iget-object v4, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfo;->mChecked:[I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 232
    const-string v3, "mSimType"

    iget v4, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfo;->mSimType:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 233
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 207
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
