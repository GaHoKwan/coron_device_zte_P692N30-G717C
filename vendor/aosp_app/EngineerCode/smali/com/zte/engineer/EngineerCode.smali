.class public Lcom/zte/engineer/EngineerCode;
.super Landroid/app/Activity;
.source "EngineerCode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/engineer/EngineerCode$MyAdapter;,
        Lcom/zte/engineer/EngineerCode$ItemContent;
    }
.end annotation


# static fields
.field public static final AUTOTEST:Ljava/lang/String; = "AUTOTEST"

.field public static final NORMALTEST:Ljava/lang/String; = "NORMALTEST"

.field public static final RESULT_FALSE:I = 0x14

.field public static final RESULT_PASS:I = 0xa

.field public static final STATE:Ljava/lang/String; = "StateArrayList"

.field public static final stringIDs:[I


# instance fields
.field adapter:Lcom/zte/engineer/EngineerCode$MyAdapter;

.field private autoTest:Z

.field private autoTestFactory:Z

.field items:[Lcom/zte/engineer/EngineerCode$ItemContent;

.field list:Landroid/widget/ListView;

.field private nowPosition:I

.field private startAuto:Z

.field testCompleted:I

.field testCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/16 v0, 0x16

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/zte/engineer/EngineerCode;->stringIDs:[I

    return-void

    :array_0
    .array-data 0x4
        0x1dt 0x0t 0x6t 0x7ft
        0x8t 0x0t 0x6t 0x7ft
        0x1et 0x0t 0x6t 0x7ft
        0x67t 0x0t 0x6t 0x7ft
        0x6dt 0x0t 0x6t 0x7ft
        0x7t 0x0t 0x6t 0x7ft
        0x8dt 0x0t 0x6t 0x7ft
        0x9t 0x0t 0x6t 0x7ft
        0xat 0x0t 0x6t 0x7ft
        0xct 0x0t 0x6t 0x7ft
        0x6t 0x0t 0x6t 0x7ft
        0xet 0x0t 0x6t 0x7ft
        0x10t 0x0t 0x6t 0x7ft
        0x11t 0x0t 0x6t 0x7ft
        0x12t 0x0t 0x6t 0x7ft
        0x13t 0x0t 0x6t 0x7ft
        0x16t 0x0t 0x6t 0x7ft
        0x18t 0x0t 0x6t 0x7ft
        0x1at 0x0t 0x6t 0x7ft
        0x1bt 0x0t 0x6t 0x7ft
        0x17t 0x0t 0x6t 0x7ft
        0x1ct 0x0t 0x6t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 71
    iput-boolean v0, p0, Lcom/zte/engineer/EngineerCode;->autoTest:Z

    .line 72
    iput-boolean v0, p0, Lcom/zte/engineer/EngineerCode;->startAuto:Z

    .line 73
    iput-boolean v0, p0, Lcom/zte/engineer/EngineerCode;->autoTestFactory:Z

    .line 74
    iput v0, p0, Lcom/zte/engineer/EngineerCode;->nowPosition:I

    .line 526
    return-void
.end method

.method static synthetic access$000(Lcom/zte/engineer/EngineerCode;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/zte/engineer/EngineerCode;->implementItemClick(I)V

    return-void
.end method

.method private implementItemClick(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 146
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 147
    .local v0, intent:Landroid/content/Intent;
    iput p1, p0, Lcom/zte/engineer/EngineerCode;->nowPosition:I

    .line 149
    sget-object v1, Lcom/zte/engineer/EngineerCode;->stringIDs:[I

    aget v1, v1, p1

    sparse-switch v1, :sswitch_data_0

    .line 313
    const-class v1, Lcom/zte/engineer/NotSupportNotification;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 314
    const-string v1, "notification"

    sget-object v2, Lcom/zte/engineer/EngineerCode;->stringIDs:[I

    aget v2, v2, p1

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 318
    :goto_0
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 319
    return-void

    .line 153
    :sswitch_0
    const-class v1, Lcom/zte/engineer/BatteryLog;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 164
    :sswitch_1
    const-class v1, Lcom/zte/engineer/TouchScreenTest;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 170
    :sswitch_2
    const-class v1, Lcom/zte/engineer/SIMTest;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 176
    :sswitch_3
    const-class v1, Lcom/zte/engineer/LcdTestActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 182
    :sswitch_4
    const-class v1, Lcom/zte/engineer/VibratorTest;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 188
    :sswitch_5
    const-class v1, Lcom/zte/engineer/BacklightTest;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 194
    :sswitch_6
    const-class v1, Lcom/zte/engineer/RingerTest;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 200
    :sswitch_7
    const-class v1, Lcom/zte/engineer/KeyTest;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 206
    :sswitch_8
    const-class v1, Lcom/zte/engineer/LcdOffTest;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 212
    :sswitch_9
    const-class v1, Lcom/zte/engineer/SDcardTest;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 218
    :sswitch_a
    const-class v1, Lcom/zte/engineer/MemoryTest;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 224
    :sswitch_b
    const-class v1, Lcom/zte/engineer/BTAddressTest;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 230
    :sswitch_c
    const-class v1, Lcom/zte/engineer/WifiAddressTest;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 236
    :sswitch_d
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.RadioInfo"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 243
    :sswitch_e
    const-class v1, Lcom/zte/engineer/ReciverTest;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 249
    :sswitch_f
    const-class v1, Lcom/zte/engineer/AudioLoopTest;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 255
    :sswitch_10
    const-class v1, Lcom/zte/engineer/EarPhoneAudioLoopTest;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 263
    :sswitch_11
    const-string v1, "com.mediatek.FMRadio"

    const-string v2, "com.mediatek.FMRadio.FMRadioEngineer"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 270
    :sswitch_12
    const-string v1, "com.android.gallery3d"

    const-string v2, "com.android.camera.Camera"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    const-string v1, "android.intent.extras.flashmode"

    const-string v2, "on"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 280
    :sswitch_13
    const-class v1, Lcom/zte/engineer/ImeiTest;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 286
    :sswitch_14
    const-class v1, Lcom/zte/engineer/ImsiTest;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 292
    :sswitch_15
    const-class v1, Lcom/zte/engineer/SensorTestEx;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 298
    :sswitch_16
    const-string v1, "com.mediatek.ygps"

    const-string v2, "com.mediatek.ygps.YgpsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 306
    :sswitch_17
    const-class v1, Lcom/zte/engineer/AutoTest;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 149
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f060006 -> :sswitch_7
        0x7f060007 -> :sswitch_f
        0x7f060008 -> :sswitch_0
        0x7f060009 -> :sswitch_3
        0x7f06000a -> :sswitch_5
        0x7f06000b -> :sswitch_4
        0x7f06000c -> :sswitch_6
        0x7f06000d -> :sswitch_8
        0x7f06000e -> :sswitch_9
        0x7f060010 -> :sswitch_a
        0x7f060011 -> :sswitch_b
        0x7f060012 -> :sswitch_c
        0x7f060013 -> :sswitch_d
        0x7f060016 -> :sswitch_11
        0x7f060017 -> :sswitch_12
        0x7f060018 -> :sswitch_13
        0x7f06001a -> :sswitch_14
        0x7f06001b -> :sswitch_15
        0x7f06001c -> :sswitch_16
        0x7f06001d -> :sswitch_17
        0x7f06001e -> :sswitch_1
        0x7f060067 -> :sswitch_2
        0x7f06006d -> :sswitch_e
        0x7f06008d -> :sswitch_10
    .end sparse-switch
.end method

.method private updateCompletedNum()V
    .locals 7

    .prologue
    .line 361
    const v5, 0x7f080037

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 362
    .local v4, t:Landroid/widget/TextView;
    const v5, 0x7f060004

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 364
    .local v3, s:Ljava/lang/String;
    iget-object v5, p0, Lcom/zte/engineer/EngineerCode;->items:[Lcom/zte/engineer/EngineerCode$ItemContent;

    array-length v1, v5

    .line 365
    .local v1, count:I
    const/4 v0, 0x0

    .line 366
    .local v0, completed:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 368
    iget-object v5, p0, Lcom/zte/engineer/EngineerCode;->items:[Lcom/zte/engineer/EngineerCode$ItemContent;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Lcom/zte/engineer/EngineerCode$ItemContent;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 370
    add-int/lit8 v0, v0, 0x1

    .line 366
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 374
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 375
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    return-void
.end method


# virtual methods
.method public autoTest(I)V
    .locals 2
    .parameter "requestCode"

    .prologue
    .line 457
    iget-boolean v0, p0, Lcom/zte/engineer/EngineerCode;->autoTest:Z

    if-eqz v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    iget-object v1, p0, Lcom/zte/engineer/EngineerCode;->adapter:Lcom/zte/engineer/EngineerCode$MyAdapter;

    invoke-virtual {v1}, Lcom/zte/engineer/EngineerCode$MyAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, p1, 0x1

    iget v1, p0, Lcom/zte/engineer/EngineerCode;->nowPosition:I

    if-lt v0, v1, :cond_0

    .line 459
    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lcom/zte/engineer/EngineerCode;->implementItemClick(I)V

    .line 465
    :goto_0
    return-void

    .line 463
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/engineer/EngineerCode;->autoTest:Z

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v1, 0x1

    .line 385
    const/16 v0, 0xa

    if-ne p2, v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/zte/engineer/EngineerCode;->items:[Lcom/zte/engineer/EngineerCode$ItemContent;

    aget-object v0, v0, p1

    invoke-virtual {v0, v1}, Lcom/zte/engineer/EngineerCode$ItemContent;->setChecked(Z)V

    .line 388
    iget-object v0, p0, Lcom/zte/engineer/EngineerCode;->items:[Lcom/zte/engineer/EngineerCode$ItemContent;

    aget-object v0, v0, p1

    invoke-virtual {v0, v1}, Lcom/zte/engineer/EngineerCode$ItemContent;->setPassed(Z)V

    .line 389
    iget-object v0, p0, Lcom/zte/engineer/EngineerCode;->adapter:Lcom/zte/engineer/EngineerCode$MyAdapter;

    iget-object v1, p0, Lcom/zte/engineer/EngineerCode;->items:[Lcom/zte/engineer/EngineerCode$ItemContent;

    invoke-virtual {v0, v1}, Lcom/zte/engineer/EngineerCode$MyAdapter;->replaceItems([Lcom/zte/engineer/EngineerCode$ItemContent;)V

    .line 390
    iget-object v0, p0, Lcom/zte/engineer/EngineerCode;->list:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/zte/engineer/EngineerCode;->adapter:Lcom/zte/engineer/EngineerCode$MyAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 391
    invoke-direct {p0}, Lcom/zte/engineer/EngineerCode;->updateCompletedNum()V

    .line 392
    iget-object v0, p0, Lcom/zte/engineer/EngineerCode;->list:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setSelection(I)V

    .line 393
    invoke-virtual {p0, p1}, Lcom/zte/engineer/EngineerCode;->autoTest(I)V

    .line 453
    :goto_0
    return-void

    .line 395
    :cond_0
    const/16 v0, 0x14

    if-ne p2, v0, :cond_1

    .line 397
    iget-object v0, p0, Lcom/zte/engineer/EngineerCode;->items:[Lcom/zte/engineer/EngineerCode$ItemContent;

    aget-object v0, v0, p1

    invoke-virtual {v0, v1}, Lcom/zte/engineer/EngineerCode$ItemContent;->setChecked(Z)V

    .line 398
    iget-object v0, p0, Lcom/zte/engineer/EngineerCode;->items:[Lcom/zte/engineer/EngineerCode$ItemContent;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/engineer/EngineerCode$ItemContent;->setPassed(Z)V

    .line 399
    iget-object v0, p0, Lcom/zte/engineer/EngineerCode;->adapter:Lcom/zte/engineer/EngineerCode$MyAdapter;

    iget-object v1, p0, Lcom/zte/engineer/EngineerCode;->items:[Lcom/zte/engineer/EngineerCode$ItemContent;

    invoke-virtual {v0, v1}, Lcom/zte/engineer/EngineerCode$MyAdapter;->replaceItems([Lcom/zte/engineer/EngineerCode$ItemContent;)V

    .line 400
    iget-object v0, p0, Lcom/zte/engineer/EngineerCode;->list:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/zte/engineer/EngineerCode;->adapter:Lcom/zte/engineer/EngineerCode$MyAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 401
    invoke-direct {p0}, Lcom/zte/engineer/EngineerCode;->updateCompletedNum()V

    .line 402
    iget-object v0, p0, Lcom/zte/engineer/EngineerCode;->list:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setSelection(I)V

    .line 403
    invoke-virtual {p0, p1}, Lcom/zte/engineer/EngineerCode;->autoTest(I)V

    goto :goto_0

    .line 407
    :cond_1
    sget-object v0, Lcom/zte/engineer/EngineerCode;->stringIDs:[I

    aget v0, v0, p1

    packed-switch v0, :pswitch_data_0

    .line 446
    :pswitch_0
    const-string v0, " "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/engineer/Util;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 434
    :pswitch_1
    iget-object v0, p0, Lcom/zte/engineer/EngineerCode;->items:[Lcom/zte/engineer/EngineerCode$ItemContent;

    aget-object v0, v0, p1

    invoke-virtual {v0, v1}, Lcom/zte/engineer/EngineerCode$ItemContent;->setChecked(Z)V

    .line 435
    iget-object v0, p0, Lcom/zte/engineer/EngineerCode;->items:[Lcom/zte/engineer/EngineerCode$ItemContent;

    aget-object v0, v0, p1

    invoke-virtual {v0, v1}, Lcom/zte/engineer/EngineerCode$ItemContent;->setPassed(Z)V

    .line 436
    iget-object v0, p0, Lcom/zte/engineer/EngineerCode;->adapter:Lcom/zte/engineer/EngineerCode$MyAdapter;

    iget-object v1, p0, Lcom/zte/engineer/EngineerCode;->items:[Lcom/zte/engineer/EngineerCode$ItemContent;

    invoke-virtual {v0, v1}, Lcom/zte/engineer/EngineerCode$MyAdapter;->replaceItems([Lcom/zte/engineer/EngineerCode$ItemContent;)V

    .line 437
    iget-object v0, p0, Lcom/zte/engineer/EngineerCode;->list:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/zte/engineer/EngineerCode;->adapter:Lcom/zte/engineer/EngineerCode$MyAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 438
    invoke-direct {p0}, Lcom/zte/engineer/EngineerCode;->updateCompletedNum()V

    .line 439
    iget-object v0, p0, Lcom/zte/engineer/EngineerCode;->list:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setSelection(I)V

    .line 440
    invoke-virtual {p0, p1}, Lcom/zte/engineer/EngineerCode;->autoTest(I)V

    goto :goto_0

    .line 407
    :pswitch_data_0
    .packed-switch 0x7f060013
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 21
    .parameter "savedInstanceState"

    .prologue
    .line 79
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    const-string v3, "test"

    const-string v4, "onCreate"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "AUTOTEST"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 83
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/zte/engineer/EngineerCode;->autoTest:Z

    .line 84
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/zte/engineer/EngineerCode;->autoTestFactory:Z

    .line 86
    :cond_0
    const v3, 0x7f03000e

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->setContentView(I)V

    .line 88
    const v3, 0x7f080038

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/zte/engineer/EngineerCode;->list:Landroid/widget/ListView;

    .line 90
    sget-object v3, Lcom/zte/engineer/EngineerCode;->stringIDs:[I

    array-length v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/zte/engineer/EngineerCode;->testCount:I

    .line 91
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/zte/engineer/EngineerCode;->testCompleted:I

    .line 92
    move-object/from16 v0, p0

    iget v3, v0, Lcom/zte/engineer/EngineerCode;->testCount:I

    new-array v3, v3, [Lcom/zte/engineer/EngineerCode$ItemContent;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/zte/engineer/EngineerCode;->items:[Lcom/zte/engineer/EngineerCode$ItemContent;

    .line 93
    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    .line 94
    .local v19, r:Landroid/content/res/Resources;
    const/4 v14, 0x0

    .line 95
    .local v14, itemState:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zte/engineer/SaveItems;>;"
    if-eqz p1, :cond_1

    .line 97
    const-string v3, "StateArrayList"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v14

    .line 99
    :cond_1
    if-eqz v14, :cond_4

    .line 101
    const/4 v11, 0x0

    .line 102
    .local v11, checked:Z
    const/16 v18, 0x0

    .line 103
    .local v18, pass:Z
    const/16 v20, 0x0

    .line 104
    .local v20, title:Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/zte/engineer/EngineerCode;->testCount:I

    if-ge v12, v3, :cond_5

    .line 106
    const/4 v11, 0x0

    .line 107
    const/16 v18, 0x0

    .line 108
    sget-object v3, Lcom/zte/engineer/EngineerCode;->stringIDs:[I

    aget v3, v3, v12

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 109
    invoke-virtual {v14}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v10

    .local v10, arr$:[Ljava/lang/Object;
    array-length v15, v10

    .local v15, len$:I
    const/4 v13, 0x0

    .local v13, i$:I
    :goto_1
    if-ge v13, v15, :cond_3

    aget-object v17, v10, v13

    .local v17, o:Ljava/lang/Object;
    move-object/from16 v3, v17

    .line 111
    check-cast v3, Lcom/zte/engineer/SaveItems;

    iget-object v3, v3, Lcom/zte/engineer/SaveItems;->title:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v3, v17

    .line 113
    check-cast v3, Lcom/zte/engineer/SaveItems;

    iget-boolean v11, v3, Lcom/zte/engineer/SaveItems;->checked:Z

    .line 114
    check-cast v17, Lcom/zte/engineer/SaveItems;

    .end local v17           #o:Ljava/lang/Object;
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/zte/engineer/SaveItems;->pass:Z

    move/from16 v18, v0

    .line 109
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 117
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/engineer/EngineerCode;->items:[Lcom/zte/engineer/EngineerCode$ItemContent;

    new-instance v4, Lcom/zte/engineer/EngineerCode$ItemContent;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v18

    invoke-direct {v4, v0, v1, v11, v2}, Lcom/zte/engineer/EngineerCode$ItemContent;-><init>(Lcom/zte/engineer/EngineerCode;Ljava/lang/String;ZZ)V

    aput-object v4, v3, v12

    .line 104
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 122
    .end local v10           #arr$:[Ljava/lang/Object;
    .end local v11           #checked:Z
    .end local v12           #i:I
    .end local v13           #i$:I
    .end local v15           #len$:I
    .end local v18           #pass:Z
    .end local v20           #title:Ljava/lang/String;
    :cond_4
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/zte/engineer/EngineerCode;->testCount:I

    if-ge v12, v3, :cond_5

    .line 124
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/engineer/EngineerCode;->items:[Lcom/zte/engineer/EngineerCode$ItemContent;

    new-instance v4, Lcom/zte/engineer/EngineerCode$ItemContent;

    sget-object v5, Lcom/zte/engineer/EngineerCode;->stringIDs:[I

    aget v5, v5, v12

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5, v6, v7}, Lcom/zte/engineer/EngineerCode$ItemContent;-><init>(Lcom/zte/engineer/EngineerCode;Ljava/lang/String;ZZ)V

    aput-object v4, v3, v12

    .line 122
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 128
    :cond_5
    new-instance v3, Lcom/zte/engineer/EngineerCode$MyAdapter;

    const v6, 0x7f030003

    const v7, 0x7f080012

    const v8, 0x7f080013

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/zte/engineer/EngineerCode;->items:[Lcom/zte/engineer/EngineerCode$ItemContent;

    move-object/from16 v4, p0

    move-object/from16 v5, p0

    invoke-direct/range {v3 .. v9}, Lcom/zte/engineer/EngineerCode$MyAdapter;-><init>(Lcom/zte/engineer/EngineerCode;Landroid/content/Context;III[Lcom/zte/engineer/EngineerCode$ItemContent;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/zte/engineer/EngineerCode;->adapter:Lcom/zte/engineer/EngineerCode$MyAdapter;

    .line 130
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/engineer/EngineerCode;->list:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/zte/engineer/EngineerCode;->adapter:Lcom/zte/engineer/EngineerCode$MyAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 131
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/engineer/EngineerCode;->list:Landroid/widget/ListView;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 133
    new-instance v16, Lcom/zte/engineer/EngineerCode$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/zte/engineer/EngineerCode$1;-><init>(Lcom/zte/engineer/EngineerCode;)V

    .line 141
    .local v16, mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/engineer/EngineerCode;->list:Landroid/widget/ListView;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 142
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 349
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 350
    iget-boolean v1, p0, Lcom/zte/engineer/EngineerCode;->autoTestFactory:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/zte/engineer/EngineerCode;->autoTest:Z

    if-nez v1, :cond_0

    .line 352
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 353
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$PrivacySettingsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 354
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 355
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 357
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 337
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 338
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 325
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 326
    invoke-direct {p0}, Lcom/zte/engineer/EngineerCode;->updateCompletedNum()V

    .line 327
    iget-boolean v0, p0, Lcom/zte/engineer/EngineerCode;->startAuto:Z

    if-nez v0, :cond_0

    .line 329
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/engineer/EngineerCode;->startAuto:Z

    .line 330
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/zte/engineer/EngineerCode;->autoTest(I)V

    .line 332
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 9
    .parameter "outState"

    .prologue
    .line 471
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 472
    .local v4, stateArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zte/engineer/SaveItems;>;"
    iget-object v0, p0, Lcom/zte/engineer/EngineerCode;->items:[Lcom/zte/engineer/EngineerCode$ItemContent;

    .local v0, arr$:[Lcom/zte/engineer/EngineerCode$ItemContent;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 474
    .local v2, item:Lcom/zte/engineer/EngineerCode$ItemContent;
    new-instance v5, Lcom/zte/engineer/SaveItems;

    invoke-virtual {v2}, Lcom/zte/engineer/EngineerCode$ItemContent;->isChecked()Z

    move-result v6

    invoke-virtual {v2}, Lcom/zte/engineer/EngineerCode$ItemContent;->isPassed()Z

    move-result v7

    invoke-virtual {v2}, Lcom/zte/engineer/EngineerCode$ItemContent;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lcom/zte/engineer/SaveItems;-><init>(ZZLjava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 472
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 476
    .end local v2           #item:Lcom/zte/engineer/EngineerCode$ItemContent;
    :cond_0
    const-string v5, "StateArrayList"

    invoke-virtual {p1, v5, v4}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 477
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 478
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 343
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 344
    return-void
.end method
