.class public Lcom/mediatek/engineermode/io/MsdcSd3Test;
.super Lcom/mediatek/engineermode/io/MsdcTest;
.source "MsdcSd3Test.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "EM/MSDC_SD30_TEST"


# instance fields
.field private mBtnGet:Landroid/widget/Button;

.field private mBtnSet:Landroid/widget/Button;

.field private mIndexDrive:I

.field private mIndexHost:I

.field private mIndexMaxCurrent:I

.field private mIndexMode:I

.field private mIndexPowerControl:I

.field private mSpinnerDrive:Landroid/widget/Spinner;

.field private mSpinnerHost:Landroid/widget/Spinner;

.field private final mSpinnerListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mSpinnerMaxCurrent:Landroid/widget/Spinner;

.field private mSpinnerMode:Landroid/widget/Spinner;

.field private mSpinnerPowerControl:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Lcom/mediatek/engineermode/io/MsdcTest;-><init>()V

    .line 61
    iput-object v0, p0, Lcom/mediatek/engineermode/io/MsdcSd3Test;->mSpinnerHost:Landroid/widget/Spinner;

    .line 62
    iput-object v0, p0, Lcom/mediatek/engineermode/io/MsdcSd3Test;->mSpinnerMode:Landroid/widget/Spinner;

    .line 63
    iput-object v0, p0, Lcom/mediatek/engineermode/io/MsdcSd3Test;->mSpinnerMaxCurrent:Landroid/widget/Spinner;

    .line 64
    iput-object v0, p0, Lcom/mediatek/engineermode/io/MsdcSd3Test;->mSpinnerDrive:Landroid/widget/Spinner;

    .line 65
    iput-object v0, p0, Lcom/mediatek/engineermode/io/MsdcSd3Test;->mSpinnerPowerControl:Landroid/widget/Spinner;

    .line 69
    iput v1, p0, Lcom/mediatek/engineermode/io/MsdcSd3Test;->mIndexHost:I

    .line 70
    const/4 v0, 0x4

    iput v0, p0, Lcom/mediatek/engineermode/io/MsdcSd3Test;->mIndexMode:I

    .line 71
    iput v1, p0, Lcom/mediatek/engineermode/io/MsdcSd3Test;->mIndexMaxCurrent:I

    .line 72
    iput v2, p0, Lcom/mediatek/engineermode/io/MsdcSd3Test;->mIndexDrive:I

    .line 73
    iput v2, p0, Lcom/mediatek/engineermode/io/MsdcSd3Test;->mIndexPowerControl:I

    .line 154
    new-instance v0, Lcom/mediatek/engineermode/io/MsdcSd3Test$1;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/io/MsdcSd3Test$1;-><init>(Lcom/mediatek/engineermode/io/MsdcSd3Test;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/io/MsdcSd3Test;->mSpinnerListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/engineermode/io/MsdcSd3Test;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/mediatek/engineermode/io/MsdcSd3Test;->mIndexHost:I

    return v0
.end method

.method static synthetic access$002(Lcom/mediatek/engineermode/io/MsdcSd3Test;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput p1, p0, Lcom/mediatek/engineermode/io/MsdcSd3Test;->mIndexHost:I

    return p1
.end method

.method static synthetic access$008(Lcom/mediatek/engineermode/io/MsdcSd3Test;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/mediatek/engineermode/io/MsdcSd3Test;->mIndexHost:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/mediatek/engineermode/io/MsdcSd3Test;->mIndexHost:I

    return v0
.end method

.method static synthetic access$102(Lcom/mediatek/engineermode/io/MsdcSd3Test;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput p1, p0, Lcom/mediatek/engineermode/io/MsdcSd3Test;->mIndexMode:I

    return p1
.end method

.method static synthetic access$202(Lcom/mediatek/engineermode/io/MsdcSd3Test;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput p1, p0, Lcom/mediatek/engineermode/io/MsdcSd3Test;->mIndexMaxCurrent:I

    return p1
.end method

.method static synthetic access$302(Lcom/mediatek/engineermode/io/MsdcSd3Test;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput p1, p0, Lcom/mediatek/engineermode/io/MsdcSd3Test;->mIndexDrive:I

    return p1
.end method

.method static synthetic access$402(Lcom/mediatek/engineermode/io/MsdcSd3Test;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput p1, p0, Lcom/mediatek/engineermode/io/MsdcSd3Test;->mIndexPowerControl:I

    return p1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "arg0"

    .prologue
    .line 141
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/engineermode/io/MsdcSd3Test;->mBtnGet:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 142
    const/16 v1, 0x6e

    invoke-virtual {p0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/engineermode/io/MsdcSd3Test;->mBtnSet:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 144
    iget v1, p0, Lcom/mediatek/engineermode/io/MsdcSd3Test;->mIndexHost:I

    iget v2, p0, Lcom/mediatek/engineermode/io/MsdcSd3Test;->mIndexMode:I

    iget v3, p0, Lcom/mediatek/engineermode/io/MsdcSd3Test;->mIndexMaxCurrent:I

    iget v4, p0, Lcom/mediatek/engineermode/io/MsdcSd3Test;->mIndexDrive:I

    iget v5, p0, Lcom/mediatek/engineermode/io/MsdcSd3Test;->mIndexPowerControl:I

    invoke-static {v1, v2, v3, v4, v5}, Lcom/mediatek/engineermode/io/EmGpio;->setSd30Mode(IIIII)Z

    move-result v0

    .line 146
    .local v0, result:Z
    if-eqz v0, :cond_2

    .line 147
    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 149
    :cond_2
    const/16 v1, 0x65

    invoke-virtual {p0, v1}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const v11, 0x1090009

    const v10, 0x1090008

    .line 77
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    const v8, 0x7f03005d

    invoke-virtual {p0, v8}, Landroid/app/Activity;->setContentView(I)V

    .line 79
    const v8, 0x7f0b0301

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/mediatek/engineermode/io/MsdcSd3Test;->mBtnGet:Landroid/widget/Button;

    .line 80
    const v8, 0x7f0b0302

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/mediatek/engineermode/io/MsdcSd3Test;->mBtnSet:Landroid/widget/Button;

    .line 81
    const v8, 0x7f0b02fc

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Spinner;

    iput-object v8, p0, Lcom/mediatek/engineermode/io/MsdcSd3Test;->mSpinnerHost:Landroid/widget/Spinner;

    .line 82
    const v8, 0x7f0b02fd

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Spinner;

    iput-object v8, p0, Lcom/mediatek/engineermode/io/MsdcSd3Test;->mSpinnerMode:Landroid/widget/Spinner;

    .line 83
    const v8, 0x7f0b02fe

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Spinner;

    iput-object v8, p0, Lcom/mediatek/engineermode/io/MsdcSd3Test;->mSpinnerMaxCurrent:Landroid/widget/Spinner;

    .line 84
    const v8, 0x7f0b02ff

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Spinner;

    iput-object v8, p0, Lcom/mediatek/engineermode/io/MsdcSd3Test;->mSpinnerDrive:Landroid/widget/Spinner;

    .line 85
    const v8, 0x7f0b0300

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Spinner;

    iput-object v8, p0, Lcom/mediatek/engineermode/io/MsdcSd3Test;->mSpinnerPowerControl:Landroid/widget/Spinner;

    .line 86
    iget-object v8, p0, Lcom/mediatek/engineermode/io/MsdcSd3Test;->mBtnGet:Landroid/widget/Button;

    invoke-virtual {v8, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v8, p0, Lcom/mediatek/engineermode/io/MsdcSd3Test;->mBtnGet:Landroid/widget/Button;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 88
    iget-object v8, p0, Lcom/mediatek/engineermode/io/MsdcSd3Test;->mBtnSet:Landroid/widget/Button;

    invoke-virtual {v8, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 90
    .local v7, res:Landroid/content/res/Resources;
    const v8, 0x7f06003e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, itemArray:[Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .local v3, itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v8, 0x0

    aget-object v8, v2, v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    const/4 v8, 0x1

    aget-object v8, v2, v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    const/16 v8, 0x20

    invoke-static {v8}, Lcom/mediatek/engineermode/ChipSupport;->isCurrentChipEquals(I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 96
    const/4 v8, 0x2

    aget-object v8, v2, v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    const/4 v8, 0x4

    aget-object v8, v2, v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_0
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-direct {v1, p0, v10, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 101
    .local v1, hostAdaprer:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v1, v11}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 103
    iget-object v8, p0, Lcom/mediatek/engineermode/io/MsdcSd3Test;->mSpinnerHost:Landroid/widget/Spinner;

    invoke-virtual {v8, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 104
    iget-object v8, p0, Lcom/mediatek/engineermode/io/MsdcSd3Test;->mSpinnerHost:Landroid/widget/Spinner;

    iget-object v9, p0, Lcom/mediatek/engineermode/io/MsdcSd3Test;->mSpinnerListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v8, v9}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 106
    new-instance v5, Landroid/widget/ArrayAdapter;

    const v8, 0x7f060044

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, p0, v10, v8}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 109
    .local v5, modeAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v5, v11}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 111
    new-instance v4, Landroid/widget/ArrayAdapter;

    const v8, 0x7f060045

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, p0, v10, v8}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 114
    .local v4, maxCurrentAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v4, v11}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 116
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v8, 0x7f060046

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, p0, v10, v8}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 119
    .local v0, driveAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v0, v11}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 121
    new-instance v6, Landroid/widget/ArrayAdapter;

    const v8, 0x7f060047

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, p0, v10, v8}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 124
    .local v6, powerControlAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v6, v11}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 126
    iget-object v8, p0, Lcom/mediatek/engineermode/io/MsdcSd3Test;->mSpinnerMode:Landroid/widget/Spinner;

    invoke-virtual {v8, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 127
    iget-object v8, p0, Lcom/mediatek/engineermode/io/MsdcSd3Test;->mSpinnerMode:Landroid/widget/Spinner;

    iget-object v9, p0, Lcom/mediatek/engineermode/io/MsdcSd3Test;->mSpinnerListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v8, v9}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 128
    iget-object v8, p0, Lcom/mediatek/engineermode/io/MsdcSd3Test;->mSpinnerMaxCurrent:Landroid/widget/Spinner;

    invoke-virtual {v8, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 129
    iget-object v8, p0, Lcom/mediatek/engineermode/io/MsdcSd3Test;->mSpinnerMaxCurrent:Landroid/widget/Spinner;

    iget-object v9, p0, Lcom/mediatek/engineermode/io/MsdcSd3Test;->mSpinnerListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v8, v9}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 130
    iget-object v8, p0, Lcom/mediatek/engineermode/io/MsdcSd3Test;->mSpinnerDrive:Landroid/widget/Spinner;

    invoke-virtual {v8, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 131
    iget-object v8, p0, Lcom/mediatek/engineermode/io/MsdcSd3Test;->mSpinnerDrive:Landroid/widget/Spinner;

    iget-object v9, p0, Lcom/mediatek/engineermode/io/MsdcSd3Test;->mSpinnerListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v8, v9}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 132
    iget-object v8, p0, Lcom/mediatek/engineermode/io/MsdcSd3Test;->mSpinnerPowerControl:Landroid/widget/Spinner;

    invoke-virtual {v8, v6}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 133
    iget-object v8, p0, Lcom/mediatek/engineermode/io/MsdcSd3Test;->mSpinnerPowerControl:Landroid/widget/Spinner;

    iget-object v9, p0, Lcom/mediatek/engineermode/io/MsdcSd3Test;->mSpinnerListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v8, v9}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 134
    iget-object v8, p0, Lcom/mediatek/engineermode/io/MsdcSd3Test;->mSpinnerMode:Landroid/widget/Spinner;

    iget v9, p0, Lcom/mediatek/engineermode/io/MsdcSd3Test;->mIndexMode:I

    invoke-virtual {v8, v9}, Landroid/widget/AbsSpinner;->setSelection(I)V

    .line 135
    iget-object v8, p0, Lcom/mediatek/engineermode/io/MsdcSd3Test;->mSpinnerMaxCurrent:Landroid/widget/Spinner;

    iget v9, p0, Lcom/mediatek/engineermode/io/MsdcSd3Test;->mIndexMaxCurrent:I

    invoke-virtual {v8, v9}, Landroid/widget/AbsSpinner;->setSelection(I)V

    .line 136
    iget-object v8, p0, Lcom/mediatek/engineermode/io/MsdcSd3Test;->mSpinnerDrive:Landroid/widget/Spinner;

    iget v9, p0, Lcom/mediatek/engineermode/io/MsdcSd3Test;->mIndexDrive:I

    invoke-virtual {v8, v9}, Landroid/widget/AbsSpinner;->setSelection(I)V

    .line 137
    iget-object v8, p0, Lcom/mediatek/engineermode/io/MsdcSd3Test;->mSpinnerPowerControl:Landroid/widget/Spinner;

    iget v9, p0, Lcom/mediatek/engineermode/io/MsdcSd3Test;->mIndexPowerControl:I

    invoke-virtual {v8, v9}, Landroid/widget/AbsSpinner;->setSelection(I)V

    .line 138
    return-void
.end method
