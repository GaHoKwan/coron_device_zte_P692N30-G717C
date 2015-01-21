.class public Leu/chainfire/supersu/PromptActivity;
.super Landroid/app/Activity;
.source ""


# instance fields
.field private Ą:Leu/chainfire/supersu/SpinnerHelper;

.field private ą:Landroid/widget/TextView;

.field private Ć:Ljava/util/Timer;

.field private ć:I

.field private ċ:Ljava/lang/String;

.field private đ:Z

.field private Ē:J

.field private ē:Z

.field private Ė:Z

.field private ė:Z

.field private Ę:Z

.field private ę:Landroid/os/Handler;

.field private ȃ:Landroid/widget/CheckBox;

.field private Ȋ:Ljava/lang/String;

.field private ˮ͈:Landroid/os/PowerManager$WakeLock;

.field private ˮ͍:I

.field private ܕ:Leu/chainfire/supersu/Settings;

.field private 㥳:Z

.field private 䒧:I

.field private 岱:I

.field private 庸:Leu/chainfire/supersu/Settings$App;

.field private 廂:Landroid/os/Bundle;

.field public 櫯:Landroid/view/View$OnLongClickListener;

.field private 纫:I

.field private 躆:Ljava/lang/String;

.field public 鷭:Landroid/view/View$OnLongClickListener;

.field private 띥:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 0
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/PromptActivity;->ˮ͈:Landroid/os/PowerManager$WakeLock;

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/PromptActivity;->ȃ:Landroid/widget/CheckBox;

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/PromptActivity;->Ą:Leu/chainfire/supersu/SpinnerHelper;

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/PromptActivity;->ą:Landroid/widget/TextView;

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/PromptActivity;->Ć:Ljava/util/Timer;

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Leu/chainfire/supersu/PromptActivity;->ć:I

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Leu/chainfire/supersu/PromptActivity;->ˮ͍:I

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Leu/chainfire/supersu/PromptActivity;->岱:I

    .line 74
    const-string v0, ""

    iput-object v0, p0, Leu/chainfire/supersu/PromptActivity;->Ȋ:Ljava/lang/String;

    .line 75
    const-string v0, ""

    iput-object v0, p0, Leu/chainfire/supersu/PromptActivity;->ċ:Ljava/lang/String;

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Leu/chainfire/supersu/PromptActivity;->纫:I

    .line 77
    const/4 v0, -0x1

    iput v0, p0, Leu/chainfire/supersu/PromptActivity;->䒧:I

    .line 78
    const-string v0, ""

    iput-object v0, p0, Leu/chainfire/supersu/PromptActivity;->躆:Ljava/lang/String;

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/PromptActivity;->ܕ:Leu/chainfire/supersu/Settings;

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/PromptActivity;->庸:Leu/chainfire/supersu/Settings$App;

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Leu/chainfire/supersu/PromptActivity;->đ:Z

    .line 84
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Leu/chainfire/supersu/PromptActivity;->Ē:J

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Leu/chainfire/supersu/PromptActivity;->ē:Z

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Leu/chainfire/supersu/PromptActivity;->띥:Z

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Leu/chainfire/supersu/PromptActivity;->㥳:Z

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Leu/chainfire/supersu/PromptActivity;->Ė:Z

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Leu/chainfire/supersu/PromptActivity;->ė:Z

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Leu/chainfire/supersu/PromptActivity;->Ę:Z

    .line 92
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Leu/chainfire/supersu/PromptActivity;->ę:Landroid/os/Handler;

    .line 93
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Leu/chainfire/supersu/PromptActivity;->廂:Landroid/os/Bundle;

    .line 427
    new-instance v0, Leu/chainfire/supersu/PromptActivity$1;

    invoke-direct {v0, p0}, Leu/chainfire/supersu/PromptActivity$1;-><init>(Leu/chainfire/supersu/PromptActivity;)V

    iput-object v0, p0, Leu/chainfire/supersu/PromptActivity;->鷭:Landroid/view/View$OnLongClickListener;

    .line 456
    new-instance v0, Leu/chainfire/supersu/PromptActivity$2;

    invoke-direct {v0, p0}, Leu/chainfire/supersu/PromptActivity$2;-><init>(Leu/chainfire/supersu/PromptActivity;)V

    iput-object v0, p0, Leu/chainfire/supersu/PromptActivity;->櫯:Landroid/view/View$OnLongClickListener;

    .line 31
    return-void
.end method

.method static synthetic Ą(Leu/chainfire/supersu/PromptActivity;)Landroid/os/Bundle;
    .locals 1

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->廂:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic ą(Leu/chainfire/supersu/PromptActivity;)I
    .locals 1

    .line 0
    iget v0, p0, Leu/chainfire/supersu/PromptActivity;->ˮ͍:I

    return v0
.end method

.method static synthetic Ć(Leu/chainfire/supersu/PromptActivity;)Landroid/widget/TextView;
    .locals 1

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->ą:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic ć(Leu/chainfire/supersu/PromptActivity;)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    iput-boolean v0, p0, Leu/chainfire/supersu/PromptActivity;->đ:Z

    return-void
.end method

.method static synthetic ȃ(Leu/chainfire/supersu/PromptActivity;)I
    .locals 1

    .line 0
    iget v0, p0, Leu/chainfire/supersu/PromptActivity;->ć:I

    return v0
.end method

.method static synthetic ˮ͈(Leu/chainfire/supersu/PromptActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Leu/chainfire/supersu/PromptActivity;->띥:Z

    return-void
.end method

.method static synthetic ˮ͈(Leu/chainfire/supersu/PromptActivity;)Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Leu/chainfire/supersu/PromptActivity;->ė:Z

    return v0
.end method

.method static synthetic ˮ͍(Leu/chainfire/supersu/PromptActivity;)Leu/chainfire/supersu/Settings$App;
    .locals 1

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->庸:Leu/chainfire/supersu/Settings$App;

    return-object v0
.end method

.method static synthetic 岱(Leu/chainfire/supersu/PromptActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Leu/chainfire/supersu/PromptActivity;->鷭()V

    return-void
.end method

.method static synthetic 櫯(Leu/chainfire/supersu/PromptActivity;)Landroid/os/Handler;
    .locals 1

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->ę:Landroid/os/Handler;

    return-object v0
.end method

.method private 櫯(J)V
    .locals 2

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->ȃ:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Leu/chainfire/supersu/PromptActivity;->ē:Z

    .line 448
    iput-wide p1, p0, Leu/chainfire/supersu/PromptActivity;->Ē:J

    .line 449
    invoke-direct {p0}, Leu/chainfire/supersu/PromptActivity;->鷭()V

    .line 450
    return-void
.end method

.method static synthetic 櫯(Leu/chainfire/supersu/PromptActivity;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Leu/chainfire/supersu/PromptActivity;->櫯(J)V

    return-void
.end method

.method static synthetic 櫯(Leu/chainfire/supersu/PromptActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Leu/chainfire/supersu/PromptActivity;->ē:Z

    return-void
.end method

.method static synthetic 鷭(Leu/chainfire/supersu/PromptActivity;)Landroid/widget/CheckBox;
    .locals 1

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->ȃ:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private 鷭()V
    .locals 5

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->Ć:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->Ć:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 478
    :cond_0
    iget-boolean v0, p0, Leu/chainfire/supersu/PromptActivity;->㥳:Z

    if-nez v0, :cond_9

    .line 480
    :try_start_0
    iget-boolean v0, p0, Leu/chainfire/supersu/PromptActivity;->Ę:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Leu/chainfire/supersu/PromptActivity;->ē:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->Ą:Leu/chainfire/supersu/SpinnerHelper;

    if-eqz v0, :cond_3

    .line 481
    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->Ą:Leu/chainfire/supersu/SpinnerHelper;

    iget-object v0, v0, Leu/chainfire/supersu/SpinnerHelper;->鷭:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    .line 482
    if-lez v4, :cond_2

    .line 483
    const/4 v0, 0x0

    iput-boolean v0, p0, Leu/chainfire/supersu/PromptActivity;->ē:Z

    .line 484
    invoke-static {p0}, Leu/chainfire/supersu/Settings;->ˮ͈(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 485
    invoke-static {v4}, Leu/chainfire/supersu/Constants;->Ą(I)J

    move-result-wide v0

    iput-wide v0, p0, Leu/chainfire/supersu/PromptActivity;->Ē:J

    .line 486
    goto :goto_0

    .line 487
    :cond_1
    const/4 v0, 0x3

    invoke-static {v0}, Leu/chainfire/supersu/Constants;->Ą(I)J

    move-result-wide v0

    iput-wide v0, p0, Leu/chainfire/supersu/PromptActivity;->Ē:J

    .line 489
    :goto_0
    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->庸:Leu/chainfire/supersu/Settings$App;

    iput v4, v0, Leu/chainfire/supersu/Settings$App;->Ą:I

    .line 490
    goto :goto_1

    .line 491
    :cond_2
    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->庸:Leu/chainfire/supersu/Settings$App;

    const/4 v1, 0x0

    iput v1, v0, Leu/chainfire/supersu/Settings$App;->Ą:I

    .line 495
    :cond_3
    :goto_1
    const/4 v4, 0x2

    .line 496
    iget-boolean v0, p0, Leu/chainfire/supersu/PromptActivity;->đ:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Leu/chainfire/supersu/PromptActivity;->ē:Z

    if-eqz v0, :cond_4

    iget-wide v0, p0, Leu/chainfire/supersu/PromptActivity;->Ē:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    .line 497
    :cond_4
    const/4 v4, 0x1

    .line 498
    goto :goto_2

    :cond_5
    iget-boolean v0, p0, Leu/chainfire/supersu/PromptActivity;->đ:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Leu/chainfire/supersu/PromptActivity;->ē:Z

    if-eqz v0, :cond_6

    iget-wide v0, p0, Leu/chainfire/supersu/PromptActivity;->Ē:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_7

    .line 499
    :cond_6
    const/4 v4, 0x0

    .line 501
    :cond_7
    :goto_2
    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->庸:Leu/chainfire/supersu/Settings$App;

    iget-wide v1, p0, Leu/chainfire/supersu/PromptActivity;->Ē:J

    iput-wide v1, v0, Leu/chainfire/supersu/Settings$App;->ȃ:J

    .line 502
    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->庸:Leu/chainfire/supersu/Settings$App;

    iput v4, v0, Leu/chainfire/supersu/Settings$App;->庸:I

    .line 503
    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->庸:Leu/chainfire/supersu/Settings$App;

    invoke-virtual {v0}, Leu/chainfire/supersu/Settings$App;->ˮ͈()V

    .line 504
    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->ܕ:Leu/chainfire/supersu/Settings;

    invoke-virtual {v0, p0}, Leu/chainfire/supersu/Settings;->櫯(Landroid/content/Context;)V

    .line 506
    iget-boolean v0, p0, Leu/chainfire/supersu/PromptActivity;->đ:Z

    if-eqz v0, :cond_8

    .line 507
    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->庸:Leu/chainfire/supersu/Settings$App;

    iget v1, p0, Leu/chainfire/supersu/PromptActivity;->岱:I

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Leu/chainfire/supersu/Settings$App;->鷭(Landroid/content/Context;II)V

    .line 508
    goto :goto_3

    .line 509
    :cond_8
    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->庸:Leu/chainfire/supersu/Settings$App;

    iget v1, p0, Leu/chainfire/supersu/PromptActivity;->岱:I

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Leu/chainfire/supersu/Settings$App;->鷭(Landroid/content/Context;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 511
    goto :goto_3

    .line 512
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 515
    :goto_3
    iget v0, p0, Leu/chainfire/supersu/PromptActivity;->岱:I

    invoke-static {v0}, Leu/chainfire/supersu/PromptQueue;->鷭(I)V

    .line 517
    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Leu/chainfire/supersu/PromptActivity;->㥳:Z

    .line 519
    const/4 v0, 0x1

    invoke-static {p0, v0}, Leu/chainfire/supersu/MainActivity;->鷭(Landroid/content/Context;I)V

    .line 520
    invoke-virtual {p0}, Leu/chainfire/supersu/PromptActivity;->finish()V

    .line 522
    invoke-static {p0}, Leu/chainfire/supersu/PromptQueue;->鷭(Landroid/content/Context;)Z

    .line 523
    return-void
.end method

.method private 鷭(J)V
    .locals 6

    .line 0
    invoke-static {}, Leu/chainfire/supersu/PINActivity;->鷭()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 407
    const/4 v0, 0x1

    iput-boolean v0, p0, Leu/chainfire/supersu/PromptActivity;->Ė:Z

    .line 409
    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->Ć:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->Ć:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 410
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/PromptActivity;->Ć:Ljava/util/Timer;

    .line 412
    move-object v0, p0

    iget v1, v0, Leu/chainfire/supersu/PromptActivity;->岱:I

    iget-object v2, p0, Leu/chainfire/supersu/PromptActivity;->庸:Leu/chainfire/supersu/Settings$App;

    iget-object v2, v2, Leu/chainfire/supersu/Settings$App;->ˮ͈:Ljava/lang/String;

    iget-object v3, p0, Leu/chainfire/supersu/PromptActivity;->ȃ:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Leu/chainfire/supersu/PINActivity;->鷭(Leu/chainfire/supersu/PromptActivity;ILjava/lang/String;ZJ)V

    .line 413
    invoke-virtual {p0}, Leu/chainfire/supersu/PromptActivity;->finish()V

    .line 414
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Leu/chainfire/supersu/PromptActivity;->overridePendingTransition(II)V

    .line 415
    return-void

    .line 416
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Leu/chainfire/supersu/PromptActivity;->đ:Z

    .line 417
    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->ȃ:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Leu/chainfire/supersu/PromptActivity;->ē:Z

    .line 418
    iput-wide p1, p0, Leu/chainfire/supersu/PromptActivity;->Ē:J

    .line 419
    invoke-direct {p0}, Leu/chainfire/supersu/PromptActivity;->鷭()V

    .line 421
    return-void
.end method

.method public static 鷭(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 5

    .line 0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 43
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 44
    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "eu.chainfire.supersu.PromptActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 46
    .line 47
    const/high16 v4, 0x4084

    .line 51
    instance-of v0, p0, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 52
    const/high16 v4, 0x5084

    .line 54
    :cond_0
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 55
    const-string v0, "eu.chainfire.supersu.extra.code"

    invoke-virtual {v3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 56
    const-string v0, "eu.chainfire.supersu.extra.appname"

    if-eqz p2, :cond_1

    move-object v1, p2

    goto :goto_0

    :cond_1
    const-string v1, ""

    :goto_0
    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    const-string v0, "eu.chainfire.supersu.extra.pkgname"

    if-eqz p3, :cond_2

    move-object v1, p3

    goto :goto_1

    :cond_2
    const-string v1, ""

    :goto_1
    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    const-string v0, "eu.chainfire.supersu.extra.from_uid"

    invoke-virtual {v3, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 59
    const-string v0, "eu.chainfire.supersu.extra.to_uid"

    invoke-virtual {v3, v0, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 60
    const-string v0, "eu.chainfire.supersu.extra.command"

    if-eqz p6, :cond_3

    move-object v1, p6

    goto :goto_2

    :cond_3
    const-string v1, ""

    :goto_2
    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 62
    return-void
.end method

.method static synthetic 鷭(Leu/chainfire/supersu/PromptActivity;I)V
    .locals 0

    .line 0
    iput p1, p0, Leu/chainfire/supersu/PromptActivity;->ć:I

    return-void
.end method

.method static synthetic 鷭(Leu/chainfire/supersu/PromptActivity;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Leu/chainfire/supersu/PromptActivity;->鷭(J)V

    return-void
.end method

.method static synthetic 鷭(Leu/chainfire/supersu/PromptActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Leu/chainfire/supersu/PromptActivity;->ė:Z

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .line 0
    iget-boolean v0, p0, Leu/chainfire/supersu/PromptActivity;->㥳:Z

    if-nez v0, :cond_1

    .line 397
    const/4 v0, 0x0

    iput-boolean v0, p0, Leu/chainfire/supersu/PromptActivity;->đ:Z

    .line 398
    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->庸:Leu/chainfire/supersu/Settings$App;

    iget-boolean v0, v0, Leu/chainfire/supersu/Settings$App;->櫯:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->ȃ:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Leu/chainfire/supersu/PromptActivity;->ē:Z

    .line 399
    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->庸:Leu/chainfire/supersu/Settings$App;

    iget-boolean v0, v0, Leu/chainfire/supersu/Settings$App;->櫯:Z

    iput-boolean v0, p0, Leu/chainfire/supersu/PromptActivity;->띥:Z

    .line 400
    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->庸:Leu/chainfire/supersu/Settings$App;

    iget-boolean v0, v0, Leu/chainfire/supersu/Settings$App;->櫯:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->庸:Leu/chainfire/supersu/Settings$App;

    invoke-virtual {v0}, Leu/chainfire/supersu/Settings$App;->ȃ()V

    .line 402
    :cond_1
    invoke-direct {p0}, Leu/chainfire/supersu/PromptActivity;->鷭()V

    .line 403
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 101
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Leu/chainfire/supersu/PromptActivity;->overridePendingTransition(II)V

    .line 103
    invoke-virtual {p0}, Leu/chainfire/supersu/PromptActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 104
    :goto_0
    invoke-virtual {p0}, Leu/chainfire/supersu/PromptActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 105
    :goto_1
    if-eqz v0, :cond_2

    if-nez v6, :cond_2

    const/4 v7, 0x1

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    .line 106
    :goto_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    iput-boolean v0, p0, Leu/chainfire/supersu/PromptActivity;->Ę:Z

    .line 108
    iget-boolean v0, p0, Leu/chainfire/supersu/PromptActivity;->Ę:Z

    if-eqz v0, :cond_7

    .line 109
    invoke-virtual {p0}, Leu/chainfire/supersu/PromptActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v7, :cond_4

    const/4 v1, 0x1

    goto :goto_4

    :cond_4
    const/4 v1, 0x7

    :goto_4
    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 111
    invoke-virtual {p0}, Leu/chainfire/supersu/PromptActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Leu/chainfire/supersu/Application;

    move-object v11, v0

    iget v0, v11, Leu/chainfire/supersu/Application;->櫯:I

    const v1, 0x7f0a0049

    if-eq v0, v1, :cond_5

    iget v0, v11, Leu/chainfire/supersu/Application;->櫯:I

    const v1, 0x7f0a004a

    if-eq v0, v1, :cond_5

    const/4 v0, 0x0

    goto :goto_5

    :cond_5
    const/4 v0, 0x1

    :goto_5
    if-eqz v0, :cond_6

    .line 112
    const v0, 0x1030073

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/PromptActivity;->setTheme(I)V

    .line 113
    goto :goto_6

    .line 114
    :cond_6
    const v0, 0x103006f

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/PromptActivity;->setTheme(I)V

    .line 118
    :cond_7
    :goto_6
    const v0, 0x7f03001c

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/PromptActivity;->setContentView(I)V

    .line 120
    iget-boolean v0, p0, Leu/chainfire/supersu/PromptActivity;->Ę:Z

    if-eqz v0, :cond_8

    .line 121
    if-nez v7, :cond_8

    .line 122
    invoke-virtual {p0}, Leu/chainfire/supersu/PromptActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x7

    const v2, 0x7f03001f

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFeatureInt(II)V

    .line 126
    :cond_8
    invoke-virtual {p0}, Leu/chainfire/supersu/PromptActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 127
    invoke-virtual {p0}, Leu/chainfire/supersu/PromptActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 129
    iget-boolean v0, p0, Leu/chainfire/supersu/PromptActivity;->Ę:Z

    if-eqz v0, :cond_9

    if-eqz v6, :cond_9

    .line 130
    invoke-virtual {p0}, Leu/chainfire/supersu/PromptActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    const/high16 v2, 0x43dc

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v6, v0

    .line 132
    new-instance v8, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v8}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 133
    invoke-virtual {p0}, Leu/chainfire/supersu/PromptActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 134
    iput v6, v8, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 135
    invoke-virtual {p0}, Leu/chainfire/supersu/PromptActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 138
    :cond_9
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Leu/chainfire/supersu/PromptActivity;->廂:Landroid/os/Bundle;

    .line 139
    invoke-virtual {p0}, Leu/chainfire/supersu/PromptActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->廂:Landroid/os/Bundle;

    invoke-virtual {p0}, Leu/chainfire/supersu/PromptActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 140
    :cond_a
    if-eqz p1, :cond_b

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->廂:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 142
    :cond_b
    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->廂:Landroid/os/Bundle;

    const-string v1, "eu.chainfire.supersu.extra.code"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Leu/chainfire/supersu/PromptActivity;->岱:I

    .line 143
    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->廂:Landroid/os/Bundle;

    const-string v1, "eu.chainfire.supersu.extra.appname"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/PromptActivity;->Ȋ:Ljava/lang/String;

    .line 144
    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->廂:Landroid/os/Bundle;

    const-string v1, "eu.chainfire.supersu.extra.pkgname"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/PromptActivity;->ċ:Ljava/lang/String;

    .line 145
    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->廂:Landroid/os/Bundle;

    const-string v1, "eu.chainfire.supersu.extra.from_uid"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Leu/chainfire/supersu/PromptActivity;->纫:I

    .line 146
    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->廂:Landroid/os/Bundle;

    const-string v1, "eu.chainfire.supersu.extra.to_uid"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Leu/chainfire/supersu/PromptActivity;->䒧:I

    .line 147
    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->廂:Landroid/os/Bundle;

    const-string v1, "eu.chainfire.supersu.extra.command"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/PromptActivity;->躆:Ljava/lang/String;

    .line 148
    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->廂:Landroid/os/Bundle;

    const-string v1, "eu.chainfire.supersu.extra.saved_counter"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 150
    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->Ȋ:Ljava/lang/String;

    if-nez v0, :cond_c

    const-string v0, ""

    iput-object v0, p0, Leu/chainfire/supersu/PromptActivity;->Ȋ:Ljava/lang/String;

    .line 151
    :cond_c
    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->ċ:Ljava/lang/String;

    if-nez v0, :cond_d

    const-string v0, ""

    iput-object v0, p0, Leu/chainfire/supersu/PromptActivity;->ċ:Ljava/lang/String;

    .line 152
    :cond_d
    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->躆:Ljava/lang/String;

    if-nez v0, :cond_e

    const-string v0, ""

    iput-object v0, p0, Leu/chainfire/supersu/PromptActivity;->躆:Ljava/lang/String;

    .line 154
    :cond_e
    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->Ȋ:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->ċ:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 156
    :cond_f
    invoke-virtual {p0}, Leu/chainfire/supersu/PromptActivity;->finish()V

    .line 157
    return-void

    .line 160
    :cond_10
    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->Ȋ:Ljava/lang/String;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_11

    .line 161
    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->Ȋ:Ljava/lang/String;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_11

    .line 162
    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->ċ:Ljava/lang/String;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_11

    .line 163
    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->ċ:Ljava/lang/String;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_12

    .line 166
    :cond_11
    invoke-virtual {p0}, Leu/chainfire/supersu/PromptActivity;->finish()V

    .line 167
    return-void

    .line 170
    :cond_12
    const v0, 0x7f04004b

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/PromptActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 171
    if-eqz v8, :cond_14

    .line 172
    if-eqz v7, :cond_13

    const/16 v0, 0x8

    goto :goto_7

    :cond_13
    const/4 v0, 0x0

    :goto_7
    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    .line 174
    :cond_14
    iget-boolean v0, p0, Leu/chainfire/supersu/PromptActivity;->Ę:Z

    if-nez v0, :cond_16

    .line 175
    const v0, 0x7f04004d

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/PromptActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v7, :cond_15

    const/16 v1, 0x8

    goto :goto_8

    :cond_15
    const/4 v1, 0x0

    :goto_8
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 178
    :cond_16
    const v0, 0x7f04004c

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/PromptActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    move-object p1, v0

    .line 179
    iget-boolean v0, p0, Leu/chainfire/supersu/PromptActivity;->Ę:Z

    if-eqz v0, :cond_17

    const v0, 0x7f040059

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/PromptActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    move-object p1, v0

    .line 180
    :cond_17
    const v0, 0x7f04004f

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/PromptActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    move-object v7, v0

    .line 181
    const v0, 0x7f040050

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/PromptActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    move-object v8, v0

    .line 182
    const v0, 0x7f040051

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/PromptActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    move-object v9, v0

    .line 183
    const v0, 0x7f040054

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/PromptActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Leu/chainfire/supersu/PromptActivity;->ȃ:Landroid/widget/CheckBox;

    .line 184
    const v0, 0x7f04004e

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/PromptActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Leu/chainfire/supersu/PromptActivity;->ą:Landroid/widget/TextView;

    .line 185
    const v0, 0x7f040055

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/PromptActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    move-object v10, v0

    .line 186
    const v0, 0x7f040056

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/PromptActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    move-object v11, v0

    .line 187
    const v0, 0x7f040053

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/PromptActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    move-object v12, v0

    .line 188
    const v0, 0x7f040057

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/PromptActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    move-object v13, v0

    .line 189
    new-instance v0, Leu/chainfire/supersu/SpinnerHelper;

    const v1, 0x7f040058

    invoke-virtual {p0, v1}, Leu/chainfire/supersu/PromptActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Leu/chainfire/supersu/SpinnerHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Leu/chainfire/supersu/PromptActivity;->Ą:Leu/chainfire/supersu/SpinnerHelper;

    .line 191
    new-instance v0, Leu/chainfire/supersu/Settings;

    invoke-direct {v0, p0}, Leu/chainfire/supersu/Settings;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Leu/chainfire/supersu/PromptActivity;->ܕ:Leu/chainfire/supersu/Settings;

    .line 192
    if-eqz p1, :cond_18

    .line 193
    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->ܕ:Leu/chainfire/supersu/Settings;

    iget-object v0, v0, Leu/chainfire/supersu/Settings;->鷭:Landroid/content/SharedPreferences;

    const-string v1, "icon"

    const-string v2, "emblem"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/supersu/Settings;->鷭(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 195
    :cond_18
    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->ܕ:Leu/chainfire/supersu/Settings;

    iget-object v1, p0, Leu/chainfire/supersu/PromptActivity;->ċ:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, p0, Leu/chainfire/supersu/PromptActivity;->Ȋ:Ljava/lang/String;

    goto :goto_9

    :cond_19
    iget-object v1, p0, Leu/chainfire/supersu/PromptActivity;->ċ:Ljava/lang/String;

    :goto_9
    invoke-virtual {v0, v1}, Leu/chainfire/supersu/Settings;->櫯(Ljava/lang/String;)Leu/chainfire/supersu/Settings$App;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/PromptActivity;->庸:Leu/chainfire/supersu/Settings$App;

    .line 197
    iget-boolean v0, p0, Leu/chainfire/supersu/PromptActivity;->Ę:Z

    if-eqz v0, :cond_22

    .line 198
    invoke-virtual {p0}, Leu/chainfire/supersu/PromptActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Leu/chainfire/supersu/Application;

    invoke-virtual {v0}, Leu/chainfire/supersu/Application;->櫯()I

    move-result p1

    .line 199
    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->ą:Landroid/widget/TextView;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->ą:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 200
    :cond_1a
    if-eqz v12, :cond_1b

    invoke-virtual {v12, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 202
    :cond_1b
    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->Ą:Leu/chainfire/supersu/SpinnerHelper;

    if-eqz v0, :cond_23

    .line 203
    invoke-virtual {p0}, Leu/chainfire/supersu/PromptActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 204
    invoke-virtual {p0}, Leu/chainfire/supersu/PromptActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900d7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    .line 205
    invoke-static {p0}, Leu/chainfire/supersu/Settings;->ˮ͈(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 206
    move-object v10, p1

    .line 207
    const/4 v0, 0x2

    new-array p1, v0, [Ljava/lang/String;

    .line 208
    const/4 v0, 0x0

    aget-object v0, v10, v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    .line 209
    const/4 v0, 0x3

    aget-object v0, v10, v0

    const/4 v1, 0x1

    aput-object v0, p1, v1

    .line 211
    :cond_1c
    new-instance v10, Landroid/widget/ArrayAdapter;

    const v0, 0x1090008

    invoke-direct {v10, p0, v0, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 212
    const v0, 0x1090009

    invoke-virtual {v10, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 213
    iget-object v11, p0, Leu/chainfire/supersu/PromptActivity;->Ą:Leu/chainfire/supersu/SpinnerHelper;

    invoke-interface {v10}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_1d

    const/4 v0, 0x0

    iput v0, v11, Leu/chainfire/supersu/SpinnerHelper;->櫯:I

    :cond_1d
    iget-object v0, v11, Leu/chainfire/supersu/SpinnerHelper;->鷭:Landroid/widget/Spinner;

    invoke-virtual {v0, v10}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 214
    iget-object v11, p0, Leu/chainfire/supersu/PromptActivity;->Ą:Leu/chainfire/supersu/SpinnerHelper;

    new-instance v10, Leu/chainfire/supersu/PromptActivity$3;

    invoke-direct {v10, p0}, Leu/chainfire/supersu/PromptActivity$3;-><init>(Leu/chainfire/supersu/PromptActivity;)V

    iput-object v10, v11, Leu/chainfire/supersu/SpinnerHelper;->ˮ͈:Landroid/widget/AdapterView$OnItemSelectedListener;

    iget-object v0, v11, Leu/chainfire/supersu/SpinnerHelper;->鷭:Landroid/widget/Spinner;

    invoke-virtual {v0, v11}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 230
    invoke-static {p0}, Leu/chainfire/supersu/Settings;->ˮ͈(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 231
    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->庸:Leu/chainfire/supersu/Settings$App;

    iget v0, v0, Leu/chainfire/supersu/Settings$App;->Ą:I

    if-nez v0, :cond_1e

    .line 232
    iget-object v11, p0, Leu/chainfire/supersu/PromptActivity;->Ą:Leu/chainfire/supersu/SpinnerHelper;

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v11, Leu/chainfire/supersu/SpinnerHelper;->櫯:I

    iget-object v0, v11, Leu/chainfire/supersu/SpinnerHelper;->鷭:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 233
    goto/16 :goto_a

    .line 234
    :cond_1e
    iget-object v11, p0, Leu/chainfire/supersu/PromptActivity;->Ą:Leu/chainfire/supersu/SpinnerHelper;

    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v11, Leu/chainfire/supersu/SpinnerHelper;->櫯:I

    iget-object v0, v11, Leu/chainfire/supersu/SpinnerHelper;->鷭:Landroid/widget/Spinner;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 236
    goto/16 :goto_a

    .line 237
    :cond_1f
    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->庸:Leu/chainfire/supersu/Settings$App;

    iget v0, v0, Leu/chainfire/supersu/Settings$App;->Ą:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_20

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->庸:Leu/chainfire/supersu/Settings$App;

    iget v0, v0, Leu/chainfire/supersu/Settings$App;->Ą:I

    array-length v1, p1

    if-lt v0, v1, :cond_21

    .line 238
    :cond_20
    iget-object v11, p0, Leu/chainfire/supersu/PromptActivity;->Ą:Leu/chainfire/supersu/SpinnerHelper;

    const/4 v0, -0x1

    const/4 v1, 0x3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v11, Leu/chainfire/supersu/SpinnerHelper;->櫯:I

    iget-object v0, v11, Leu/chainfire/supersu/SpinnerHelper;->鷭:Landroid/widget/Spinner;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 239
    goto :goto_a

    .line 240
    :cond_21
    iget-object v11, p0, Leu/chainfire/supersu/PromptActivity;->Ą:Leu/chainfire/supersu/SpinnerHelper;

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->庸:Leu/chainfire/supersu/Settings$App;

    iget v10, v0, Leu/chainfire/supersu/Settings$App;->Ą:I

    const/4 v0, -0x1

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v11, Leu/chainfire/supersu/SpinnerHelper;->櫯:I

    iget-object v0, v11, Leu/chainfire/supersu/SpinnerHelper;->鷭:Landroid/widget/Spinner;

    invoke-virtual {v0, v10}, Landroid/widget/Spinner;->setSelection(I)V

    .line 244
    goto :goto_a

    .line 246
    :cond_22
    invoke-static {p0}, Leu/chainfire/supersu/Settings;->ˮ͈(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 247
    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->櫯:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v10, v0}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 248
    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->鷭:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v11, v0}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 249
    if-eqz v13, :cond_23

    const/4 v0, 0x0

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 253
    :cond_23
    :goto_a
    const-string v0, "%s (%d)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Leu/chainfire/supersu/PromptActivity;->Ȋ:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Leu/chainfire/supersu/PromptActivity;->纫:I

    rem-int/lit16 v2, v2, 0x2710

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->ċ:Ljava/lang/String;

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->ċ:Ljava/lang/String;

    if-eqz v0, :cond_24

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->ċ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 256
    :cond_24
    const/16 v0, 0x11

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 259
    :cond_25
    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->庸:Leu/chainfire/supersu/Settings$App;

    iget v0, v0, Leu/chainfire/supersu/Settings$App;->庸:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->庸:Leu/chainfire/supersu/Settings$App;

    iget-object v0, v0, Leu/chainfire/supersu/Settings$App;->ˮ͍:Ljava/lang/String;

    if-eqz v0, :cond_26

    .line 260
    move-object v0, p0

    iget v1, v0, Leu/chainfire/supersu/PromptActivity;->岱:I

    iget-object v2, p0, Leu/chainfire/supersu/PromptActivity;->庸:Leu/chainfire/supersu/Settings$App;

    iget-object v2, v2, Leu/chainfire/supersu/Settings$App;->ˮ͈:Ljava/lang/String;

    iget-object v3, p0, Leu/chainfire/supersu/PromptActivity;->ȃ:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    const-wide/16 v4, 0x0

    invoke-static/range {v0 .. v5}, Leu/chainfire/supersu/PINActivity;->鷭(Leu/chainfire/supersu/PromptActivity;ILjava/lang/String;ZJ)V

    .line 261
    invoke-virtual {p0}, Leu/chainfire/supersu/PromptActivity;->finish()V

    .line 262
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Leu/chainfire/supersu/PromptActivity;->overridePendingTransition(II)V

    .line 263
    return-void

    .line 266
    :cond_26
    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->ܕ:Leu/chainfire/supersu/Settings;

    iget-object v0, v0, Leu/chainfire/supersu/Settings;->鷭:Landroid/content/SharedPreferences;

    const-string v1, "dev_permisison_warning"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 267
    if-eqz v12, :cond_27

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->ċ:Ljava/lang/String;

    if-eqz v0, :cond_27

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->ċ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 268
    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->ċ:Ljava/lang/String;

    invoke-static {p0, v0}, Leu/chainfire/supersu/Permission;->鷭(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 269
    const/4 v0, 0x0

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 274
    :cond_27
    if-eqz v7, :cond_29

    .line 275
    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->ċ:Ljava/lang/String;

    if-eqz v0, :cond_28

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->ċ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 277
    :try_start_0
    invoke-virtual {p0}, Leu/chainfire/supersu/PromptActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Leu/chainfire/supersu/PromptActivity;->ċ:Ljava/lang/String;

    invoke-static {v0, v1}, Leu/chainfire/supersu/Settings;->鷭(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 278
    invoke-virtual {p0}, Leu/chainfire/supersu/PromptActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 279
    invoke-virtual {v7, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    goto :goto_b

    .line 282
    :catch_0
    goto :goto_b

    .line 283
    :cond_28
    const/16 v0, 0x8

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 287
    :cond_29
    :goto_b
    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->庸:Leu/chainfire/supersu/Settings$App;

    iget v0, v0, Leu/chainfire/supersu/Settings$App;->庸:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2a

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->庸:Leu/chainfire/supersu/Settings$App;

    iget-boolean v0, v0, Leu/chainfire/supersu/Settings$App;->櫯:Z

    if-nez v0, :cond_2a

    const/4 v0, 0x1

    goto :goto_c

    :cond_2a
    const/4 v0, 0x0

    :goto_c
    iput-boolean v0, p0, Leu/chainfire/supersu/PromptActivity;->ē:Z

    .line 288
    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->ȃ:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Leu/chainfire/supersu/PromptActivity;->ē:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 289
    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->庸:Leu/chainfire/supersu/Settings$App;

    iget v0, v0, Leu/chainfire/supersu/Settings$App;->ܕ:I

    iput v0, p0, Leu/chainfire/supersu/PromptActivity;->ć:I

    .line 290
    iget v0, p0, Leu/chainfire/supersu/PromptActivity;->ć:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2b

    .line 291
    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->ܕ:Leu/chainfire/supersu/Settings;

    iget-object v0, v0, Leu/chainfire/supersu/Settings;->櫯:Leu/chainfire/supersu/Settings$Default;

    iget v0, v0, Leu/chainfire/supersu/Settings$Default;->ܕ:I

    iput v0, p0, Leu/chainfire/supersu/PromptActivity;->ć:I

    .line 293
    :cond_2b
    iget v0, p0, Leu/chainfire/supersu/PromptActivity;->ć:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Leu/chainfire/supersu/PromptActivity;->ˮ͍:I

    .line 294
    if-lez v6, :cond_2c

    .line 295
    iput v6, p0, Leu/chainfire/supersu/PromptActivity;->ć:I

    .line 296
    goto :goto_d

    :cond_2c
    iget v0, p0, Leu/chainfire/supersu/PromptActivity;->ć:I

    if-lez v0, :cond_2d

    .line 297
    iget v0, p0, Leu/chainfire/supersu/PromptActivity;->ć:I

    mul-int/lit8 v0, v0, 0xa

    iput v0, p0, Leu/chainfire/supersu/PromptActivity;->ć:I

    .line 299
    :cond_2d
    :goto_d
    iget v0, p0, Leu/chainfire/supersu/PromptActivity;->ć:I

    if-lez v0, :cond_2e

    .line 300
    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->ą:Landroid/widget/TextView;

    iget v1, p0, Leu/chainfire/supersu/PromptActivity;->ć:I

    div-int/lit8 v1, v1, 0xa

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Leu/chainfire/supersu/PromptActivity;->Ć:Ljava/util/Timer;

    .line 303
    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->Ć:Ljava/util/Timer;

    new-instance v1, Leu/chainfire/supersu/PromptActivity$4;

    invoke-direct {v1, p0}, Leu/chainfire/supersu/PromptActivity$4;-><init>(Leu/chainfire/supersu/PromptActivity;)V

    .line 303
    .line 338
    const-wide/16 v2, 0x64

    const-wide/16 v4, 0x64

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 340
    :cond_2e
    return-void
.end method

.method public onDeny(Landroid/view/View;)V
    .locals 2

    .line 0
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Leu/chainfire/supersu/PromptActivity;->櫯(J)V

    .line 454
    return-void
.end method

.method public onGrant(Landroid/view/View;)V
    .locals 2

    .line 0
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Leu/chainfire/supersu/PromptActivity;->鷭(J)V

    .line 425
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 365
    const/4 v0, 0x1

    iput-boolean v0, p0, Leu/chainfire/supersu/PromptActivity;->ė:Z

    .line 366
    return-void
.end method

.method protected onPostResume()V
    .locals 1

    .line 0
    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    .line 371
    const/4 v0, 0x0

    iput-boolean v0, p0, Leu/chainfire/supersu/PromptActivity;->ė:Z

    .line 372
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 0
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 391
    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->廂:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 392
    return-void
.end method

.method protected onStart()V
    .locals 3

    .line 0
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 346
    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->ˮ͈:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    .line 347
    const-string v0, "power"

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/PromptActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const-string v1, "SuperSU Prompt Wakelock"

    const v2, 0x3000000a

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/PromptActivity;->ˮ͈:Landroid/os/PowerManager$WakeLock;

    .line 349
    :cond_0
    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->ˮ͈:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    .line 350
    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->ˮ͈:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 352
    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->ˮ͈:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->ˮ͈:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->ˮ͈:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 359
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 360
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 1

    .line 0
    iget-boolean v0, p0, Leu/chainfire/supersu/PromptActivity;->Ė:Z

    if-eqz v0, :cond_0

    return-void

    .line 378
    :cond_0
    iget-boolean v0, p0, Leu/chainfire/supersu/PromptActivity;->㥳:Z

    if-nez v0, :cond_1

    .line 379
    const/4 v0, 0x0

    iput-boolean v0, p0, Leu/chainfire/supersu/PromptActivity;->đ:Z

    .line 380
    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->庸:Leu/chainfire/supersu/Settings$App;

    iget-boolean v0, v0, Leu/chainfire/supersu/Settings$App;->櫯:Z

    if-eqz v0, :cond_1

    .line 381
    const/4 v0, 0x1

    iput-boolean v0, p0, Leu/chainfire/supersu/PromptActivity;->ē:Z

    .line 382
    const/4 v0, 0x1

    iput-boolean v0, p0, Leu/chainfire/supersu/PromptActivity;->띥:Z

    .line 385
    :cond_1
    invoke-direct {p0}, Leu/chainfire/supersu/PromptActivity;->鷭()V

    .line 386
    return-void
.end method
