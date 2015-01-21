.class public abstract Leu/chainfire/supersu/AppDetailActivity$UIHandler;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/chainfire/supersu/AppDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "UIHandler"
.end annotation


# instance fields
.field private Ą:J

.field private ą:Ljava/lang/String;

.field private Ć:Leu/chainfire/supersu/SpinnerHelper;

.field private ć:Leu/chainfire/supersu/SpinnerHelper;

.field ȃ:Leu/chainfire/supersu/Settings$App;

.field private Ȋ:Ljava/lang/String;

.field ˮ͈:Leu/chainfire/supersu/Settings;

.field private ˮ͍:Leu/chainfire/supersu/SpinnerHelper;

.field private 岱:Z

.field 櫯:Landroid/app/Activity;

.field private 鷭:Leu/chainfire/supersu/SpinnerHelper;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 8

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->ˮ͈:Leu/chainfire/supersu/Settings;

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->ȃ:Leu/chainfire/supersu/Settings$App;

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->鷭:Leu/chainfire/supersu/SpinnerHelper;

    .line 26
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->Ą:J

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->ą:Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->Ć:Leu/chainfire/supersu/SpinnerHelper;

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->ć:Leu/chainfire/supersu/SpinnerHelper;

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->ˮ͍:Leu/chainfire/supersu/SpinnerHelper;

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->岱:Z

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->Ȋ:Ljava/lang/String;

    .line 45
    iput-object p1, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->櫯:Landroid/app/Activity;

    .line 46
    move-object v4, p1

    .line 48
    if-nez p2, :cond_0

    const-string p2, ""

    .line 49
    :cond_0
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 51
    :cond_1
    new-instance v0, Leu/chainfire/supersu/Settings;

    invoke-direct {v0, p1}, Leu/chainfire/supersu/Settings;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->ˮ͈:Leu/chainfire/supersu/Settings;

    .line 52
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->ˮ͈:Leu/chainfire/supersu/Settings;

    invoke-virtual {v0, p2}, Leu/chainfire/supersu/Settings;->櫯(Ljava/lang/String;)Leu/chainfire/supersu/Settings$App;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->ȃ:Leu/chainfire/supersu/Settings$App;

    .line 53
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->ȃ:Leu/chainfire/supersu/Settings$App;

    iget-wide v0, v0, Leu/chainfire/supersu/Settings$App;->ȃ:J

    iput-wide v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->Ą:J

    .line 54
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->ȃ:Leu/chainfire/supersu/Settings$App;

    iget-object v0, v0, Leu/chainfire/supersu/Settings$App;->ˮ͍:Ljava/lang/String;

    iput-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->ą:Ljava/lang/String;

    .line 56
    const-string v5, ""

    .line 57
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 58
    if-eqz v6, :cond_2

    .line 60
    :try_start_0
    invoke-static {v6, p2}, Leu/chainfire/supersu/Settings;->鷭(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 61
    if-eqz v0, :cond_2

    .line 62
    move-object v5, p2

    .line 63
    invoke-static {v6, p2}, Leu/chainfire/supersu/Settings;->櫯(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object p2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    nop

    .line 68
    :catch_0
    :cond_2
    move-object v7, p2

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->櫯:Landroid/app/Activity;

    const v1, 0x7f040022

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    move-object v6, v0

    if-eqz v6, :cond_3

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    :cond_3
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    move-object v7, v5

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->櫯:Landroid/app/Activity;

    const v1, 0x7f040028

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    move-object v6, v0

    if-eqz v6, :cond_4

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    :cond_4
    invoke-static {p1}, Leu/chainfire/supersu/Settings;->ˮ͈(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->岱:Z

    .line 73
    new-instance v0, Leu/chainfire/supersu/SpinnerHelper;

    const v1, 0x7f04002e

    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Leu/chainfire/supersu/SpinnerHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->鷭:Leu/chainfire/supersu/SpinnerHelper;

    .line 76
    iget-boolean v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->岱:Z

    if-nez v0, :cond_5

    .line 77
    new-instance v7, Landroid/widget/ArrayAdapter;

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->櫯:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const v1, 0x1090008

    invoke-direct {v7, p1, v1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 78
    goto :goto_1

    .line 79
    :cond_5
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->櫯:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    .line 80
    array-length v0, p2

    add-int/lit8 v0, v0, 0x1

    new-array v6, v0, [Ljava/lang/CharSequence;

    .line 81
    const/4 v7, 0x0

    goto :goto_0

    .line 82
    :cond_6
    aget-object v0, p2, v7

    aput-object v0, v6, v7

    .line 81
    add-int/lit8 v7, v7, 0x1

    :goto_0
    array-length v0, p2

    if-lt v7, v0, :cond_6

    .line 84
    array-length v0, v6

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->櫯:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090047

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v0

    .line 85
    new-instance v7, Landroid/widget/ArrayAdapter;

    const v0, 0x1090008

    invoke-direct {v7, p1, v0, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 87
    :goto_1
    const v0, 0x1090009

    invoke-virtual {v7, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 88
    iget-object v6, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->鷭:Leu/chainfire/supersu/SpinnerHelper;

    move-object p2, v7

    invoke-interface {p2}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_7

    const/4 v0, 0x0

    iput v0, v6, Leu/chainfire/supersu/SpinnerHelper;->櫯:I

    :cond_7
    iget-object v0, v6, Leu/chainfire/supersu/SpinnerHelper;->鷭:Landroid/widget/Spinner;

    invoke-virtual {v0, p2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 90
    iget-object v6, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->鷭:Leu/chainfire/supersu/SpinnerHelper;

    new-instance p2, Leu/chainfire/supersu/AppDetailActivity$UIHandler$1;

    invoke-direct {p2, p0, v4}, Leu/chainfire/supersu/AppDetailActivity$UIHandler$1;-><init>(Leu/chainfire/supersu/AppDetailActivity$UIHandler;Landroid/app/Activity;)V

    iput-object p2, v6, Leu/chainfire/supersu/SpinnerHelper;->ˮ͈:Landroid/widget/AdapterView$OnItemSelectedListener;

    iget-object v0, v6, Leu/chainfire/supersu/SpinnerHelper;->鷭:Landroid/widget/Spinner;

    invoke-virtual {v0, v6}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 121
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->ȃ:Leu/chainfire/supersu/Settings$App;

    iget v0, v0, Leu/chainfire/supersu/Settings$App;->庸:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 123
    :pswitch_0
    iget-object v6, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->鷭:Leu/chainfire/supersu/SpinnerHelper;

    iget-boolean v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->岱:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->ȃ:Leu/chainfire/supersu/Settings$App;

    iget-object v0, v0, Leu/chainfire/supersu/Settings$App;->ˮ͍:Ljava/lang/String;

    if-eqz v0, :cond_8

    const/4 p2, 0x5

    goto :goto_2

    :cond_8
    const/4 p2, 0x0

    :goto_2
    const/4 v0, -0x1

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v6, Leu/chainfire/supersu/SpinnerHelper;->櫯:I

    iget-object v0, v6, Leu/chainfire/supersu/SpinnerHelper;->鷭:Landroid/widget/Spinner;

    invoke-virtual {v0, p2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 124
    goto/16 :goto_5

    .line 126
    :pswitch_1
    iget-object v6, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->鷭:Leu/chainfire/supersu/SpinnerHelper;

    iget-boolean v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->岱:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->ȃ:Leu/chainfire/supersu/Settings$App;

    iget-object v0, v0, Leu/chainfire/supersu/Settings$App;->ˮ͍:Ljava/lang/String;

    if-nez v0, :cond_9

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->ȃ:Leu/chainfire/supersu/Settings$App;

    iget-wide v0, v0, Leu/chainfire/supersu/Settings$App;->ȃ:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    const/4 p2, 0x2

    goto :goto_3

    :cond_9
    const/4 p2, 0x5

    goto :goto_3

    :cond_a
    const/4 p2, 0x1

    :goto_3
    const/4 v0, -0x1

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v6, Leu/chainfire/supersu/SpinnerHelper;->櫯:I

    iget-object v0, v6, Leu/chainfire/supersu/SpinnerHelper;->鷭:Landroid/widget/Spinner;

    invoke-virtual {v0, p2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 127
    goto :goto_5

    .line 129
    :pswitch_2
    iget-object v6, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->鷭:Leu/chainfire/supersu/SpinnerHelper;

    iget-boolean v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->岱:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->ȃ:Leu/chainfire/supersu/Settings$App;

    iget-wide v0, v0, Leu/chainfire/supersu/Settings$App;->ȃ:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    const/4 p2, 0x3

    goto :goto_4

    :cond_b
    const/4 p2, 0x4

    goto :goto_4

    :cond_c
    const/4 p2, 0x2

    :goto_4
    const/4 v0, -0x1

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v6, Leu/chainfire/supersu/SpinnerHelper;->櫯:I

    iget-object v0, v6, Leu/chainfire/supersu/SpinnerHelper;->鷭:Landroid/widget/Spinner;

    invoke-virtual {v0, p2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 134
    :goto_5
    new-instance v0, Leu/chainfire/supersu/SpinnerHelper;

    const v1, 0x7f04002f

    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Leu/chainfire/supersu/SpinnerHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->ć:Leu/chainfire/supersu/SpinnerHelper;

    .line 136
    const v0, 0x7f0b0006

    const v1, 0x1090008

    invoke-static {p1, v0, v1}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v7

    .line 137
    const v0, 0x1090009

    invoke-virtual {v7, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 138
    iget-object v6, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->ć:Leu/chainfire/supersu/SpinnerHelper;

    move-object p2, v7

    invoke-interface {p2}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_d

    const/4 v0, 0x0

    iput v0, v6, Leu/chainfire/supersu/SpinnerHelper;->櫯:I

    :cond_d
    iget-object v0, v6, Leu/chainfire/supersu/SpinnerHelper;->鷭:Landroid/widget/Spinner;

    invoke-virtual {v0, p2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 140
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->ȃ:Leu/chainfire/supersu/Settings$App;

    iget v0, v0, Leu/chainfire/supersu/Settings$App;->䒧:I

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_6

    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch

    .line 141
    :pswitch_3
    iget-object v6, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->ć:Leu/chainfire/supersu/SpinnerHelper;

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v6, Leu/chainfire/supersu/SpinnerHelper;->櫯:I

    iget-object v0, v6, Leu/chainfire/supersu/SpinnerHelper;->鷭:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_6

    .line 142
    :pswitch_4
    iget-object v6, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->ć:Leu/chainfire/supersu/SpinnerHelper;

    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v6, Leu/chainfire/supersu/SpinnerHelper;->櫯:I

    iget-object v0, v6, Leu/chainfire/supersu/SpinnerHelper;->鷭:Landroid/widget/Spinner;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_6

    .line 143
    :pswitch_5
    iget-object v6, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->ć:Leu/chainfire/supersu/SpinnerHelper;

    const/4 v0, -0x1

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v6, Leu/chainfire/supersu/SpinnerHelper;->櫯:I

    iget-object v0, v6, Leu/chainfire/supersu/SpinnerHelper;->鷭:Landroid/widget/Spinner;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 146
    :goto_6
    iget-object v6, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->ć:Leu/chainfire/supersu/SpinnerHelper;

    new-instance p2, Leu/chainfire/supersu/AppDetailActivity$UIHandler$2;

    invoke-direct {p2, p0}, Leu/chainfire/supersu/AppDetailActivity$UIHandler$2;-><init>(Leu/chainfire/supersu/AppDetailActivity$UIHandler;)V

    iput-object p2, v6, Leu/chainfire/supersu/SpinnerHelper;->ˮ͈:Landroid/widget/AdapterView$OnItemSelectedListener;

    iget-object v0, v6, Leu/chainfire/supersu/SpinnerHelper;->鷭:Landroid/widget/Spinner;

    invoke-virtual {v0, v6}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 159
    new-instance v0, Leu/chainfire/supersu/SpinnerHelper;

    const v1, 0x7f040030

    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Leu/chainfire/supersu/SpinnerHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->Ć:Leu/chainfire/supersu/SpinnerHelper;

    .line 161
    iget-boolean v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->岱:Z

    if-eqz v0, :cond_11

    .line 162
    const v0, 0x7f0b0005

    const v1, 0x1090008

    invoke-static {p1, v0, v1}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v7

    .line 163
    const v0, 0x1090009

    invoke-virtual {v7, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 164
    iget-object v6, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->Ć:Leu/chainfire/supersu/SpinnerHelper;

    move-object p2, v7

    invoke-interface {p2}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_e

    const/4 v0, 0x0

    iput v0, v6, Leu/chainfire/supersu/SpinnerHelper;->櫯:I

    :cond_e
    iget-object v0, v6, Leu/chainfire/supersu/SpinnerHelper;->鷭:Landroid/widget/Spinner;

    invoke-virtual {v0, p2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 166
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->ȃ:Leu/chainfire/supersu/Settings$App;

    iget v0, v0, Leu/chainfire/supersu/Settings$App;->躆:I

    packed-switch v0, :pswitch_data_2

    goto/16 :goto_7

    :pswitch_data_2
    .packed-switch -0x1
        :pswitch_6
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    .line 167
    :pswitch_6
    iget-object v6, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->Ć:Leu/chainfire/supersu/SpinnerHelper;

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v6, Leu/chainfire/supersu/SpinnerHelper;->櫯:I

    iget-object v0, v6, Leu/chainfire/supersu/SpinnerHelper;->鷭:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_7

    .line 168
    :pswitch_7
    iget-object v6, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->Ć:Leu/chainfire/supersu/SpinnerHelper;

    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v6, Leu/chainfire/supersu/SpinnerHelper;->櫯:I

    iget-object v0, v6, Leu/chainfire/supersu/SpinnerHelper;->鷭:Landroid/widget/Spinner;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_7

    .line 169
    :pswitch_8
    iget-object v6, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->Ć:Leu/chainfire/supersu/SpinnerHelper;

    const/4 v0, -0x1

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v6, Leu/chainfire/supersu/SpinnerHelper;->櫯:I

    iget-object v0, v6, Leu/chainfire/supersu/SpinnerHelper;->鷭:Landroid/widget/Spinner;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_7

    .line 170
    :pswitch_9
    iget-object v6, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->Ć:Leu/chainfire/supersu/SpinnerHelper;

    const/4 v0, -0x1

    const/4 v1, 0x3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v6, Leu/chainfire/supersu/SpinnerHelper;->櫯:I

    iget-object v0, v6, Leu/chainfire/supersu/SpinnerHelper;->鷭:Landroid/widget/Spinner;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 173
    .line 174
    :goto_7
    move-object p2, v5

    if-eqz v5, :cond_f

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 175
    :cond_f
    invoke-static {p1, v5}, Leu/chainfire/supersu/Settings;->櫯(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 176
    iget-object v6, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->Ć:Leu/chainfire/supersu/SpinnerHelper;

    new-instance p2, Leu/chainfire/supersu/AppDetailActivity$UIHandler$3;

    invoke-direct {p2, p0, v4}, Leu/chainfire/supersu/AppDetailActivity$UIHandler$3;-><init>(Leu/chainfire/supersu/AppDetailActivity$UIHandler;Landroid/app/Activity;)V

    iput-object p2, v6, Leu/chainfire/supersu/SpinnerHelper;->ˮ͈:Landroid/widget/AdapterView$OnItemSelectedListener;

    iget-object v0, v6, Leu/chainfire/supersu/SpinnerHelper;->鷭:Landroid/widget/Spinner;

    invoke-virtual {v0, v6}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 195
    goto/16 :goto_8

    .line 196
    :cond_10
    iget-object v6, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->Ć:Leu/chainfire/supersu/SpinnerHelper;

    new-instance p2, Leu/chainfire/supersu/AppDetailActivity$UIHandler$4;

    invoke-direct {p2, p0}, Leu/chainfire/supersu/AppDetailActivity$UIHandler$4;-><init>(Leu/chainfire/supersu/AppDetailActivity$UIHandler;)V

    iput-object p2, v6, Leu/chainfire/supersu/SpinnerHelper;->ˮ͈:Landroid/widget/AdapterView$OnItemSelectedListener;

    iget-object v0, v6, Leu/chainfire/supersu/SpinnerHelper;->鷭:Landroid/widget/Spinner;

    invoke-virtual {v0, v6}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 208
    goto/16 :goto_8

    .line 209
    :cond_11
    new-instance v7, Landroid/widget/ArrayAdapter;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09005d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x1090008

    invoke-direct {v7, p1, v1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 210
    const v0, 0x1090009

    invoke-virtual {v7, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 211
    iget-object v6, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->Ć:Leu/chainfire/supersu/SpinnerHelper;

    move-object p2, v7

    invoke-interface {p2}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_12

    const/4 v0, 0x0

    iput v0, v6, Leu/chainfire/supersu/SpinnerHelper;->櫯:I

    :cond_12
    iget-object v0, v6, Leu/chainfire/supersu/SpinnerHelper;->鷭:Landroid/widget/Spinner;

    invoke-virtual {v0, p2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 212
    iget-object v6, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->Ć:Leu/chainfire/supersu/SpinnerHelper;

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v6, Leu/chainfire/supersu/SpinnerHelper;->櫯:I

    iget-object v0, v6, Leu/chainfire/supersu/SpinnerHelper;->鷭:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 213
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->Ć:Leu/chainfire/supersu/SpinnerHelper;

    iget-object v0, v0, Leu/chainfire/supersu/SpinnerHelper;->鷭:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 217
    :goto_8
    new-instance v0, Leu/chainfire/supersu/SpinnerHelper;

    const v1, 0x7f040031

    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Leu/chainfire/supersu/SpinnerHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->ˮ͍:Leu/chainfire/supersu/SpinnerHelper;

    .line 219
    iget-boolean v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->岱:Z

    if-eqz v0, :cond_16

    .line 220
    const/4 v7, 0x0

    .line 221
    sget-object v0, Leu/chainfire/supersu/Constants;->Ć:[I

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array p2, v0, [Ljava/lang/String;

    .line 222
    const v0, 0x7f090058

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p2, v1

    .line 223
    const/4 v6, 0x0

    goto :goto_9

    .line 224
    :cond_13
    add-int/lit8 v0, v6, 0x1

    sget-object v1, Leu/chainfire/supersu/Constants;->Ć:[I

    aget v1, v1, v6

    invoke-static {v1}, Leu/chainfire/supersu/Constants;->鷭(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v0

    .line 225
    sget-object v0, Leu/chainfire/supersu/Constants;->Ć:[I

    aget v0, v0, v6

    iget-object v1, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->ȃ:Leu/chainfire/supersu/Settings$App;

    iget v1, v1, Leu/chainfire/supersu/Settings$App;->Ć:I

    if-ne v0, v1, :cond_14

    .line 226
    add-int/lit8 v7, v6, 0x1

    .line 223
    :cond_14
    add-int/lit8 v6, v6, 0x1

    :goto_9
    sget-object v0, Leu/chainfire/supersu/Constants;->Ć:[I

    array-length v0, v0

    if-lt v6, v0, :cond_13

    .line 229
    new-instance v6, Landroid/widget/ArrayAdapter;

    const v0, 0x1090008

    invoke-direct {v6, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 230
    const v0, 0x1090009

    invoke-virtual {v6, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 231
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->ˮ͍:Leu/chainfire/supersu/SpinnerHelper;

    move-object p2, v6

    move-object v6, v0

    invoke-interface {p2}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_15

    const/4 v0, 0x0

    iput v0, v6, Leu/chainfire/supersu/SpinnerHelper;->櫯:I

    :cond_15
    iget-object v0, v6, Leu/chainfire/supersu/SpinnerHelper;->鷭:Landroid/widget/Spinner;

    invoke-virtual {v0, p2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 232
    iget-object v6, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->ˮ͍:Leu/chainfire/supersu/SpinnerHelper;

    move p2, v7

    const/4 v0, -0x1

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v6, Leu/chainfire/supersu/SpinnerHelper;->櫯:I

    iget-object v0, v6, Leu/chainfire/supersu/SpinnerHelper;->鷭:Landroid/widget/Spinner;

    invoke-virtual {v0, p2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 234
    iget-object v6, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->ˮ͍:Leu/chainfire/supersu/SpinnerHelper;

    new-instance p2, Leu/chainfire/supersu/AppDetailActivity$UIHandler$5;

    invoke-direct {p2, p0}, Leu/chainfire/supersu/AppDetailActivity$UIHandler$5;-><init>(Leu/chainfire/supersu/AppDetailActivity$UIHandler;)V

    iput-object p2, v6, Leu/chainfire/supersu/SpinnerHelper;->ˮ͈:Landroid/widget/AdapterView$OnItemSelectedListener;

    iget-object v0, v6, Leu/chainfire/supersu/SpinnerHelper;->鷭:Landroid/widget/Spinner;

    invoke-virtual {v0, v6}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 245
    goto/16 :goto_a

    .line 246
    :cond_16
    new-instance v7, Landroid/widget/ArrayAdapter;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09005d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x1090008

    invoke-direct {v7, p1, v1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 247
    const v0, 0x1090009

    invoke-virtual {v7, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 248
    iget-object v6, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->ˮ͍:Leu/chainfire/supersu/SpinnerHelper;

    move-object p2, v7

    invoke-interface {p2}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_17

    const/4 v0, 0x0

    iput v0, v6, Leu/chainfire/supersu/SpinnerHelper;->櫯:I

    :cond_17
    iget-object v0, v6, Leu/chainfire/supersu/SpinnerHelper;->鷭:Landroid/widget/Spinner;

    invoke-virtual {v0, p2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 249
    iget-object v6, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->ˮ͍:Leu/chainfire/supersu/SpinnerHelper;

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v6, Leu/chainfire/supersu/SpinnerHelper;->櫯:I

    iget-object v0, v6, Leu/chainfire/supersu/SpinnerHelper;->鷭:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 250
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->ˮ͍:Leu/chainfire/supersu/SpinnerHelper;

    iget-object v0, v0, Leu/chainfire/supersu/SpinnerHelper;->鷭:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 254
    :goto_a
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->鷭(Z)V

    .line 255
    return-void
.end method

.method static synthetic 鷭(Leu/chainfire/supersu/AppDetailActivity$UIHandler;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->Ą:J

    return-void
.end method

.method static synthetic 鷭(Leu/chainfire/supersu/AppDetailActivity$UIHandler;)Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->岱:Z

    return v0
.end method


# virtual methods
.method public final ˮ͈()V
    .locals 3

    .line 0
    iget-object v2, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->鷭:Leu/chainfire/supersu/SpinnerHelper;

    const/4 v0, 0x0

    iput-object v0, v2, Leu/chainfire/supersu/SpinnerHelper;->ˮ͈:Landroid/widget/AdapterView$OnItemSelectedListener;

    iget-object v0, v2, Leu/chainfire/supersu/SpinnerHelper;->鷭:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 404
    iget-object v2, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->ć:Leu/chainfire/supersu/SpinnerHelper;

    const/4 v0, 0x0

    iput-object v0, v2, Leu/chainfire/supersu/SpinnerHelper;->ˮ͈:Landroid/widget/AdapterView$OnItemSelectedListener;

    iget-object v0, v2, Leu/chainfire/supersu/SpinnerHelper;->鷭:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 405
    iget-object v2, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->Ć:Leu/chainfire/supersu/SpinnerHelper;

    const/4 v0, 0x0

    iput-object v0, v2, Leu/chainfire/supersu/SpinnerHelper;->ˮ͈:Landroid/widget/AdapterView$OnItemSelectedListener;

    iget-object v0, v2, Leu/chainfire/supersu/SpinnerHelper;->鷭:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 406
    iget-object v2, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->ˮ͍:Leu/chainfire/supersu/SpinnerHelper;

    const/4 v0, 0x0

    iput-object v0, v2, Leu/chainfire/supersu/SpinnerHelper;->ˮ͈:Landroid/widget/AdapterView$OnItemSelectedListener;

    iget-object v0, v2, Leu/chainfire/supersu/SpinnerHelper;->鷭:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 407
    return-void
.end method

.method public final 櫯()V
    .locals 4

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->鷭:Leu/chainfire/supersu/SpinnerHelper;

    iget-object v0, v0, Leu/chainfire/supersu/SpinnerHelper;->鷭:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 260
    :pswitch_0
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->ȃ:Leu/chainfire/supersu/Settings$App;

    const/4 v1, 0x2

    iput v1, v0, Leu/chainfire/supersu/Settings$App;->庸:I

    .line 261
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->ȃ:Leu/chainfire/supersu/Settings$App;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Leu/chainfire/supersu/Settings$App;->ȃ:J

    .line 262
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->ȃ:Leu/chainfire/supersu/Settings$App;

    const/4 v1, 0x0

    iput-object v1, v0, Leu/chainfire/supersu/Settings$App;->ˮ͍:Ljava/lang/String;

    .line 263
    goto/16 :goto_1

    .line 265
    :pswitch_1
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->ȃ:Leu/chainfire/supersu/Settings$App;

    const/4 v1, 0x1

    iput v1, v0, Leu/chainfire/supersu/Settings$App;->庸:I

    .line 266
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->ȃ:Leu/chainfire/supersu/Settings$App;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Leu/chainfire/supersu/Settings$App;->ȃ:J

    .line 267
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->ȃ:Leu/chainfire/supersu/Settings$App;

    const/4 v1, 0x0

    iput-object v1, v0, Leu/chainfire/supersu/Settings$App;->ˮ͍:Ljava/lang/String;

    .line 268
    goto/16 :goto_1

    .line 270
    :pswitch_2
    iget-boolean v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->岱:Z

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->ȃ:Leu/chainfire/supersu/Settings$App;

    const/4 v1, 0x1

    iput v1, v0, Leu/chainfire/supersu/Settings$App;->庸:I

    .line 272
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->ȃ:Leu/chainfire/supersu/Settings$App;

    iget-wide v1, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->Ą:J

    iput-wide v1, v0, Leu/chainfire/supersu/Settings$App;->ȃ:J

    .line 273
    goto :goto_0

    .line 274
    :cond_0
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->ȃ:Leu/chainfire/supersu/Settings$App;

    const/4 v1, 0x0

    iput v1, v0, Leu/chainfire/supersu/Settings$App;->庸:I

    .line 275
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->ȃ:Leu/chainfire/supersu/Settings$App;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Leu/chainfire/supersu/Settings$App;->ȃ:J

    .line 277
    :goto_0
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->ȃ:Leu/chainfire/supersu/Settings$App;

    const/4 v1, 0x0

    iput-object v1, v0, Leu/chainfire/supersu/Settings$App;->ˮ͍:Ljava/lang/String;

    .line 278
    goto/16 :goto_1

    .line 280
    :pswitch_3
    iget-boolean v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->岱:Z

    if-eqz v0, :cond_1

    .line 281
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->ȃ:Leu/chainfire/supersu/Settings$App;

    const/4 v1, 0x0

    iput v1, v0, Leu/chainfire/supersu/Settings$App;->庸:I

    .line 282
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->ȃ:Leu/chainfire/supersu/Settings$App;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Leu/chainfire/supersu/Settings$App;->ȃ:J

    .line 284
    :cond_1
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->ȃ:Leu/chainfire/supersu/Settings$App;

    const/4 v1, 0x0

    iput-object v1, v0, Leu/chainfire/supersu/Settings$App;->ˮ͍:Ljava/lang/String;

    .line 285
    goto :goto_1

    .line 287
    :pswitch_4
    iget-boolean v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->岱:Z

    if-eqz v0, :cond_2

    .line 288
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->ȃ:Leu/chainfire/supersu/Settings$App;

    const/4 v1, 0x0

    iput v1, v0, Leu/chainfire/supersu/Settings$App;->庸:I

    .line 289
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->ȃ:Leu/chainfire/supersu/Settings$App;

    iget-wide v1, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->Ą:J

    iput-wide v1, v0, Leu/chainfire/supersu/Settings$App;->ȃ:J

    .line 291
    :cond_2
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->ȃ:Leu/chainfire/supersu/Settings$App;

    const/4 v1, 0x0

    iput-object v1, v0, Leu/chainfire/supersu/Settings$App;->ˮ͍:Ljava/lang/String;

    .line 292
    goto :goto_1

    .line 294
    :pswitch_5
    iget-boolean v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->岱:Z

    if-eqz v0, :cond_3

    .line 295
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->ȃ:Leu/chainfire/supersu/Settings$App;

    const/4 v1, 0x2

    iput v1, v0, Leu/chainfire/supersu/Settings$App;->庸:I

    .line 296
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->ȃ:Leu/chainfire/supersu/Settings$App;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Leu/chainfire/supersu/Settings$App;->ȃ:J

    .line 297
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->ȃ:Leu/chainfire/supersu/Settings$App;

    iget-object v1, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->ą:Ljava/lang/String;

    iput-object v1, v0, Leu/chainfire/supersu/Settings$App;->ˮ͍:Ljava/lang/String;

    .line 302
    :cond_3
    :goto_1
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->ć:Leu/chainfire/supersu/SpinnerHelper;

    iget-object v0, v0, Leu/chainfire/supersu/SpinnerHelper;->鷭:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto :goto_2

    nop

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 303
    :pswitch_6
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->ȃ:Leu/chainfire/supersu/Settings$App;

    const/4 v1, -0x1

    iput v1, v0, Leu/chainfire/supersu/Settings$App;->䒧:I

    goto :goto_2

    .line 304
    :pswitch_7
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->ȃ:Leu/chainfire/supersu/Settings$App;

    const/4 v1, 0x1

    iput v1, v0, Leu/chainfire/supersu/Settings$App;->䒧:I

    goto :goto_2

    .line 305
    :pswitch_8
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->ȃ:Leu/chainfire/supersu/Settings$App;

    const/4 v1, 0x0

    iput v1, v0, Leu/chainfire/supersu/Settings$App;->䒧:I

    .line 308
    :goto_2
    iget-boolean v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->岱:Z

    if-eqz v0, :cond_5

    .line 309
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->Ć:Leu/chainfire/supersu/SpinnerHelper;

    iget-object v0, v0, Leu/chainfire/supersu/SpinnerHelper;->鷭:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    packed-switch v0, :pswitch_data_2

    goto :goto_3

    nop

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch

    .line 310
    :pswitch_9
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->ȃ:Leu/chainfire/supersu/Settings$App;

    const/4 v1, -0x1

    iput v1, v0, Leu/chainfire/supersu/Settings$App;->躆:I

    goto :goto_3

    .line 311
    :pswitch_a
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->ȃ:Leu/chainfire/supersu/Settings$App;

    const/4 v1, 0x2

    iput v1, v0, Leu/chainfire/supersu/Settings$App;->躆:I

    goto :goto_3

    .line 312
    :pswitch_b
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->ȃ:Leu/chainfire/supersu/Settings$App;

    const/4 v1, 0x1

    iput v1, v0, Leu/chainfire/supersu/Settings$App;->躆:I

    goto :goto_3

    .line 313
    :pswitch_c
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->ȃ:Leu/chainfire/supersu/Settings$App;

    const/4 v1, 0x0

    iput v1, v0, Leu/chainfire/supersu/Settings$App;->躆:I

    .line 316
    :goto_3
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->ˮ͍:Leu/chainfire/supersu/SpinnerHelper;

    iget-object v0, v0, Leu/chainfire/supersu/SpinnerHelper;->鷭:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-nez v0, :cond_4

    .line 317
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->ȃ:Leu/chainfire/supersu/Settings$App;

    const/4 v1, -0x1

    iput v1, v0, Leu/chainfire/supersu/Settings$App;->Ć:I

    .line 318
    goto :goto_4

    .line 319
    :cond_4
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->ȃ:Leu/chainfire/supersu/Settings$App;

    sget-object v1, Leu/chainfire/supersu/Constants;->Ć:[I

    iget-object v2, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->ˮ͍:Leu/chainfire/supersu/SpinnerHelper;

    iget-object v2, v2, Leu/chainfire/supersu/SpinnerHelper;->鷭:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    iput v1, v0, Leu/chainfire/supersu/Settings$App;->Ć:I

    .line 323
    :cond_5
    :goto_4
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->ȃ:Leu/chainfire/supersu/Settings$App;

    invoke-virtual {v0}, Leu/chainfire/supersu/Settings$App;->ˮ͈()V

    .line 324
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->ˮ͈:Leu/chainfire/supersu/Settings;

    iget-object v1, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->櫯:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Leu/chainfire/supersu/Settings;->櫯(Landroid/content/Context;)V

    .line 325
    return-void
.end method

.method public abstract 鷭()V
.end method

.method protected final 鷭(ILandroid/content/Intent;)V
    .locals 4

    .line 0
    invoke-static {}, Leu/chainfire/supersu/SuperUser;->鷭()V

    .line 334
    const/16 v0, 0x1101

    if-ne p1, v0, :cond_3

    .line 337
    const/4 p1, 0x3

    .line 338
    if-eqz p2, :cond_0

    const-string v0, "eu.chainfire.supersu.pin.status"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    const-string v0, "eu.chainfire.supersu.pin.status"

    const/4 v1, 0x3

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 342
    :cond_0
    invoke-static {}, Leu/chainfire/supersu/SuperUser;->鷭()V

    .line 343
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 344
    const-string v0, "eu.chainfire.supersu.pin.code"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 345
    if-nez p1, :cond_1

    const-string p1, ""

    .line 346
    :cond_1
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 347
    iput-object p1, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->Ȋ:Ljava/lang/String;

    .line 351
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->櫯:Landroid/app/Activity;

    const/4 v1, 0x0

    const/16 v2, 0x1102

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Leu/chainfire/supersu/PINActivity;->鷭(Landroid/app/Activity;ZIZ)V

    .line 353
    return-void

    .line 354
    :cond_2
    invoke-virtual {p0}, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->鷭()V

    .line 356
    return-void

    :cond_3
    const/16 v0, 0x1102

    if-ne p1, v0, :cond_9

    .line 359
    const/4 p1, 0x3

    .line 360
    if-eqz p2, :cond_4

    const-string v0, "eu.chainfire.supersu.pin.status"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 361
    const-string v0, "eu.chainfire.supersu.pin.status"

    const/4 v1, 0x3

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 364
    :cond_4
    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    .line 365
    const-string v0, "eu.chainfire.supersu.pin.code"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 366
    if-nez p1, :cond_5

    const-string p1, ""

    .line 368
    :cond_5
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 369
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->Ȋ:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->Ȋ:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 374
    :cond_6
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->Ȋ:Ljava/lang/String;

    .line 375
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->櫯:Landroid/app/Activity;

    invoke-static {v0}, Leu/chainfire/supersu/Constants;->鷭(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 376
    const-string v1, "SuperSU"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 377
    const v1, 0x7f090062

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 378
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 379
    new-instance v1, Leu/chainfire/supersu/AppDetailActivity$UIHandler$6;

    invoke-direct {v1, p0}, Leu/chainfire/supersu/AppDetailActivity$UIHandler$6;-><init>(Leu/chainfire/supersu/AppDetailActivity$UIHandler;)V

    const v2, 0x7f090004

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 385
    new-instance v1, Leu/chainfire/supersu/AppDetailActivity$UIHandler$7;

    invoke-direct {v1, p0}, Leu/chainfire/supersu/AppDetailActivity$UIHandler$7;-><init>(Leu/chainfire/supersu/AppDetailActivity$UIHandler;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 391
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 392
    return-void

    .line 393
    :cond_7
    invoke-static {p1}, Leu/chainfire/supersu/Settings;->ˮ͈(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->ą:Ljava/lang/String;

    .line 396
    return-void

    .line 397
    :cond_8
    invoke-virtual {p0}, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->鷭()V

    .line 400
    :cond_9
    return-void
.end method

.method public abstract 鷭(Z)V
.end method
