.class public Lcom/plugin/installapk/newrttc_v2/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/xmgd/plugin/interfaces/IPrefernceSettingItemPlugin;


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:Landroid/content/SharedPreferences;

.field private d:Lcom/plugin/installapk/newrttc_v2/j;

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/plugin/installapk/newrttc_v2/i;->a:Landroid/content/Context;

    iput v1, p0, Lcom/plugin/installapk/newrttc_v2/i;->b:I

    iput-boolean v1, p0, Lcom/plugin/installapk/newrttc_v2/i;->e:Z

    iput-boolean v1, p0, Lcom/plugin/installapk/newrttc_v2/i;->f:Z

    return-void
.end method

.method private a(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, p2, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private a(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const-string v0, "\u8def\u51b5\u64ad\u62a5\u5f00\u5173"

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u8def\u51b5\u64ad\u62a5\u5f00\u5173"

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string v0, "\u8def\u6cc1\u64ad\u5831\u958b\u95dc"

    goto :goto_0

    :cond_3
    const-string v0, "\u8def\u51b5\u64ad\u62a5\u5f00\u5173"

    goto :goto_0
.end method

.method private a(I)V
    .locals 4

    const/16 v3, 0x20

    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "autonavi_wuxd"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RoadConditionReport],startService : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->LOG_D(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.plugin.installapk.realtraffic.start"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/plugin/installapk/newrttc_v2/i;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.plugin.installapk.realtraffic.stop"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/plugin/installapk/newrttc_v2/i;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private a(II)V
    .locals 3

    const/16 v2, 0x20

    const/4 v1, 0x3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    if-ne p1, v1, :cond_3

    :cond_0
    if-ne p2, v0, :cond_1

    if-eq p2, v1, :cond_3

    :cond_1
    iput-boolean v0, p0, Lcom/plugin/installapk/newrttc_v2/i;->e:Z

    iget-boolean v0, p0, Lcom/plugin/installapk/newrttc_v2/i;->f:Z

    if-eqz v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.plugin.installapk.realtraffic.autogetcontent"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/plugin/installapk/newrttc_v2/i;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    if-eqz p1, :cond_4

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    :cond_4
    iget-boolean v0, p0, Lcom/plugin/installapk/newrttc_v2/i;->f:Z

    if-eqz v0, :cond_5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.plugin.installapk.realtraffic.removeautogetcontent"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/plugin/installapk/newrttc_v2/i;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/plugin/installapk/newrttc_v2/i;->e:Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/plugin/installapk/newrttc_v2/i;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/plugin/installapk/newrttc_v2/i;->e:Z

    return v0
.end method

.method static synthetic a(Lcom/plugin/installapk/newrttc_v2/i;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/plugin/installapk/newrttc_v2/i;->f:Z

    return p1
.end method

.method static synthetic b(Lcom/plugin/installapk/newrttc_v2/i;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/plugin/installapk/newrttc_v2/i;->a:Landroid/content/Context;

    return-object v0
.end method

.method private b(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const-string v0, "\u8def\u51b5\u64ad\u62a5"

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u8def\u51b5\u64ad\u62a5"

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string v0, "\u8def\u6cc1\u64ad\u5831"

    goto :goto_0

    :cond_3
    const-string v0, "Traffic report "

    goto :goto_0
.end method

.method private b(I)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.plugin.installapk.realtraffic.updatebtn"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    :cond_0
    const-string v2, "update_manual_button"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/plugin/installapk/newrttc_v2/i;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_1
    const-string v2, "update_manual_button"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private c(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const-string v0, "\u81ea\u52a8"

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u81ea\u52a8"

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string v0, "\u81ea\u52d5"

    goto :goto_0

    :cond_3
    const-string v0, "Automatic"

    goto :goto_0
.end method


# virtual methods
.method public getDescription(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/plugin/installapk/newrttc_v2/i;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/plugin/installapk/newrttc_v2/i;->b(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/plugin/installapk/newrttc_v2/i;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/plugin/installapk/newrttc_v2/i;->a(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDialogType()I
    .locals 3

    const/4 v0, 0x2

    iget v1, p0, Lcom/plugin/installapk/newrttc_v2/i;->b:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v0, 0x3

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/plugin/installapk/newrttc_v2/i;->b:I

    if-eq v1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIndex()I
    .locals 4

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/plugin/installapk/newrttc_v2/i;->a:Landroid/content/Context;

    const-string v2, "user_info"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/plugin/installapk/newrttc_v2/i;->c:Landroid/content/SharedPreferences;

    iget v1, p0, Lcom/plugin/installapk/newrttc_v2/i;->b:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/plugin/installapk/newrttc_v2/i;->c:Landroid/content/SharedPreferences;

    const-string v2, "index1"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/plugin/installapk/newrttc_v2/i;->c:Landroid/content/SharedPreferences;

    const-string v1, "index1"

    const-string v2, "3"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/plugin/installapk/newrttc_v2/i;->b:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/plugin/installapk/newrttc_v2/i;->c:Landroid/content/SharedPreferences;

    const-string v2, "index2"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/plugin/installapk/newrttc_v2/i;->c:Landroid/content/SharedPreferences;

    const-string v1, "index2"

    const-string v2, "3"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getItemIcon()Landroid/graphics/Bitmap;
    .locals 3

    const v2, 0x7f0200e6

    iget v0, p0, Lcom/plugin/installapk/newrttc_v2/i;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/plugin/installapk/newrttc_v2/i;->a:Landroid/content/Context;

    invoke-direct {p0, v0, v2}, Lcom/plugin/installapk/newrttc_v2/i;->a(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/plugin/installapk/newrttc_v2/i;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/plugin/installapk/newrttc_v2/i;->a:Landroid/content/Context;

    invoke-direct {p0, v0, v2}, Lcom/plugin/installapk/newrttc_v2/i;->a(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemValuesArray(Ljava/util/Locale;)[Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/plugin/installapk/newrttc_v2/i;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/plugin/installapk/newrttc_v2/i;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/plugin/installapk/newrttc_v2/i;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/plugin/installapk/newrttc_v2/i;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemValuesCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getSecondTitle(ZILjava/util/Locale;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x1

    iget v0, p0, Lcom/plugin/installapk/newrttc_v2/i;->b:I

    if-ne v0, v3, :cond_b

    iget-object v0, p0, Lcom/plugin/installapk/newrttc_v2/i;->a:Landroid/content/Context;

    const-string v1, "user_info"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/plugin/installapk/newrttc_v2/i;->c:Landroid/content/SharedPreferences;

    if-eqz p1, :cond_0

    invoke-direct {p0, p3}, Lcom/plugin/installapk/newrttc_v2/i;->c(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    if-nez p2, :cond_1

    invoke-direct {p0, p3}, Lcom/plugin/installapk/newrttc_v2/i;->c(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-ne p2, v3, :cond_6

    if-nez p3, :cond_2

    const-string v0, "\u624b\u52a8"

    goto :goto_0

    :cond_2
    sget-object v0, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {p3, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "\u624b\u52a8"

    goto :goto_0

    :cond_3
    sget-object v0, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {p3, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const-string v0, "\u624b\u52d5"

    goto :goto_0

    :cond_5
    const-string v0, "Manual"

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/plugin/installapk/newrttc_v2/i;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "index2"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    if-nez p3, :cond_7

    const-string v0, "\u5173\u95ed"

    goto :goto_0

    :cond_7
    sget-object v0, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {p3, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "\u5173\u95ed"

    goto :goto_0

    :cond_8
    sget-object v0, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {p3, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    const-string v0, "\u95dc\u9589"

    goto :goto_0

    :cond_a
    const-string v0, "Close"

    goto :goto_0

    :cond_b
    iget v0, p0, Lcom/plugin/installapk/newrttc_v2/i;->b:I

    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public getSettingNum()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getSettingTitle(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/plugin/installapk/newrttc_v2/i;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/plugin/installapk/newrttc_v2/i;->b(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/plugin/installapk/newrttc_v2/i;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/plugin/installapk/newrttc_v2/i;->a(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTitle(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/plugin/installapk/newrttc_v2/i;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/plugin/installapk/newrttc_v2/i;->b(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/plugin/installapk/newrttc_v2/i;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/plugin/installapk/newrttc_v2/i;->a(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public load(Landroid/content/Context;Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/plugin/installapk/newrttc_v2/i;->a:Landroid/content/Context;

    new-instance v0, Lcom/plugin/installapk/newrttc_v2/j;

    invoke-direct {v0, p0, v3}, Lcom/plugin/installapk/newrttc_v2/j;-><init>(Lcom/plugin/installapk/newrttc_v2/i;Lcom/plugin/installapk/newrttc_v2/f;)V

    iput-object v0, p0, Lcom/plugin/installapk/newrttc_v2/i;->d:Lcom/plugin/installapk/newrttc_v2/j;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.plugin.installapk.realtraffic.state"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/plugin/installapk/newrttc_v2/i;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/plugin/installapk/newrttc_v2/i;->d:Lcom/plugin/installapk/newrttc_v2/j;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-object v3
.end method

.method public reset()I
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/plugin/installapk/newrttc_v2/i;->a:Landroid/content/Context;

    const-string v2, "user_info"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/plugin/installapk/newrttc_v2/i;->c:Landroid/content/SharedPreferences;

    iget v1, p0, Lcom/plugin/installapk/newrttc_v2/i;->b:I

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Lcom/plugin/installapk/newrttc_v2/i;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "index1"

    const-string v2, "3"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/plugin/installapk/newrttc_v2/i;->c:Landroid/content/SharedPreferences;

    const-string v1, "index1"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/plugin/installapk/newrttc_v2/i;->b:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/plugin/installapk/newrttc_v2/i;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "index2"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/plugin/installapk/newrttc_v2/i;->c:Landroid/content/SharedPreferences;

    const-string v1, "index2"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public setIndex(I)V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/plugin/installapk/newrttc_v2/i;->a:Landroid/content/Context;

    const-string v1, "user_info"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/plugin/installapk/newrttc_v2/i;->c:Landroid/content/SharedPreferences;

    iget v0, p0, Lcom/plugin/installapk/newrttc_v2/i;->b:I

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lcom/plugin/installapk/newrttc_v2/i;->c:Landroid/content/SharedPreferences;

    const-string v1, "index1"

    const-string v2, "3"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/plugin/installapk/newrttc_v2/i;->c:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "index1"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-direct {p0, p1}, Lcom/plugin/installapk/newrttc_v2/i;->a(I)V

    invoke-direct {p0, p1, v0}, Lcom/plugin/installapk/newrttc_v2/i;->a(II)V

    invoke-direct {p0, p1}, Lcom/plugin/installapk/newrttc_v2/i;->b(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/plugin/installapk/newrttc_v2/i;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/plugin/installapk/newrttc_v2/i;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "index2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    if-ne p1, v4, :cond_2

    iget-object v0, p0, Lcom/plugin/installapk/newrttc_v2/i;->c:Landroid/content/SharedPreferences;

    const-string v1, "index1"

    const-string v2, "3"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/plugin/installapk/newrttc_v2/i;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "index1"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :cond_2
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/plugin/installapk/newrttc_v2/i;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "index1"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public setLogFlag(Z)V
    .locals 0

    return-void
.end method

.method public setSettingNum(I)V
    .locals 0

    iput p1, p0, Lcom/plugin/installapk/newrttc_v2/i;->b:I

    return-void
.end method

.method public unload()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/plugin/installapk/newrttc_v2/i;->a:Landroid/content/Context;

    const/4 v0, 0x0

    iput v0, p0, Lcom/plugin/installapk/newrttc_v2/i;->b:I

    return-object v1
.end method
