.class public Lcom/mediatek/engineermode/io/MsdcHopSet;
.super Lcom/mediatek/engineermode/io/MsdcTest;
.source "MsdcHopSet.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DATA_BIT:I = 0xf

.field private static final OFFSET_HOP_BIT:I = 0x18

.field private static final OFFSET_TIME_BIT:I = 0x1c

.field private static final TAG:Ljava/lang/String; = "MSDC_HOPSET_IOCTL"


# instance fields
.field private mBtnGet:Landroid/widget/Button;

.field private mBtnSet:Landroid/widget/Button;

.field private mHoppingBitIndex:I

.field private mHoppingBitSpinner:Landroid/widget/Spinner;

.field private mHoppingTimeIndex:I

.field private mHoppingTimeSpinner:Landroid/widget/Spinner;

.field private mHostIndex:I

.field private mHostSpinner:Landroid/widget/Spinner;

.field private mIsNewChip:Z

.field private final mSpinnerListener:Landroid/widget/AdapterView$OnItemSelectedListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Lcom/mediatek/engineermode/io/MsdcTest;-><init>()V

    .line 64
    iput v0, p0, Lcom/mediatek/engineermode/io/MsdcHopSet;->mHostIndex:I

    .line 66
    iput v0, p0, Lcom/mediatek/engineermode/io/MsdcHopSet;->mHoppingBitIndex:I

    .line 68
    iput v0, p0, Lcom/mediatek/engineermode/io/MsdcHopSet;->mHoppingTimeIndex:I

    .line 71
    iput-boolean v0, p0, Lcom/mediatek/engineermode/io/MsdcHopSet;->mIsNewChip:Z

    .line 153
    new-instance v0, Lcom/mediatek/engineermode/io/MsdcHopSet$1;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/io/MsdcHopSet$1;-><init>(Lcom/mediatek/engineermode/io/MsdcHopSet;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/io/MsdcHopSet;->mSpinnerListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-void
.end method

.method static synthetic access$002(Lcom/mediatek/engineermode/io/MsdcHopSet;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput p1, p0, Lcom/mediatek/engineermode/io/MsdcHopSet;->mHostIndex:I

    return p1
.end method

.method static synthetic access$102(Lcom/mediatek/engineermode/io/MsdcHopSet;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput p1, p0, Lcom/mediatek/engineermode/io/MsdcHopSet;->mHoppingBitIndex:I

    return p1
.end method

.method static synthetic access$202(Lcom/mediatek/engineermode/io/MsdcHopSet;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput p1, p0, Lcom/mediatek/engineermode/io/MsdcHopSet;->mHoppingTimeIndex:I

    return p1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14
    .parameter "arg0"

    .prologue
    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 128
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v2, p0, Lcom/mediatek/engineermode/io/MsdcHopSet;->mBtnGet:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v0, v2, :cond_2

    .line 130
    iget v0, p0, Lcom/mediatek/engineermode/io/MsdcHopSet;->mHostIndex:I

    invoke-static {v0, v9}, Lcom/mediatek/engineermode/io/EmGpio;->newGetCurrent(II)I

    move-result v10

    .line 131
    .local v10, idx:I
    const-string v0, "MSDC_HOPSET_IOCTL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get Data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const/4 v0, -0x1

    if-eq v10, v0, :cond_1

    .line 133
    shr-int/lit8 v0, v10, 0x18

    and-int/lit8 v11, v0, 0xf

    .line 134
    .local v11, mHopbitIdx:I
    shr-int/lit8 v0, v10, 0x1c

    and-int/lit8 v12, v0, 0xf

    .line 135
    .local v12, mHoptimeIdx:I
    iget-object v0, p0, Lcom/mediatek/engineermode/io/MsdcHopSet;->mHoppingBitSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v11}, Landroid/widget/AbsSpinner;->setSelection(I)V

    .line 136
    iget-object v0, p0, Lcom/mediatek/engineermode/io/MsdcHopSet;->mHoppingTimeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v12}, Landroid/widget/AbsSpinner;->setSelection(I)V

    .line 151
    .end local v10           #idx:I
    .end local v11           #mHopbitIdx:I
    .end local v12           #mHoptimeIdx:I
    :cond_0
    :goto_0
    return-void

    .line 138
    .restart local v10       #idx:I
    :cond_1
    const/16 v0, 0x6e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 141
    .end local v10           #idx:I
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v2, p0, Lcom/mediatek/engineermode/io/MsdcHopSet;->mBtnSet:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 143
    iget v0, p0, Lcom/mediatek/engineermode/io/MsdcHopSet;->mHostIndex:I

    iget v7, p0, Lcom/mediatek/engineermode/io/MsdcHopSet;->mHoppingBitIndex:I

    iget v8, p0, Lcom/mediatek/engineermode/io/MsdcHopSet;->mHoppingTimeIndex:I

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    invoke-static/range {v0 .. v9}, Lcom/mediatek/engineermode/io/EmGpio;->newSetCurrent(IIIIIIIIII)Z

    move-result v13

    .line 145
    .local v13, ret:Z
    if-eqz v13, :cond_3

    .line 146
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 148
    :cond_3
    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x0

    const v11, 0x1090009

    const v10, 0x1090008

    .line 75
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    const v7, 0x7f03005c

    invoke-virtual {p0, v7}, Landroid/app/Activity;->setContentView(I)V

    .line 77
    const/16 v7, 0x10

    invoke-static {}, Lcom/mediatek/engineermode/ChipSupport;->getChip()I

    move-result v9

    if-gt v7, v9, :cond_0

    const/4 v7, 0x1

    :goto_0
    iput-boolean v7, p0, Lcom/mediatek/engineermode/io/MsdcHopSet;->mIsNewChip:Z

    .line 78
    const v7, 0x7f0b02fa

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/mediatek/engineermode/io/MsdcHopSet;->mBtnGet:Landroid/widget/Button;

    .line 79
    const v7, 0x7f0b02fb

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/mediatek/engineermode/io/MsdcHopSet;->mBtnSet:Landroid/widget/Button;

    .line 80
    const v7, 0x7f0b02f7

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Spinner;

    iput-object v7, p0, Lcom/mediatek/engineermode/io/MsdcHopSet;->mHostSpinner:Landroid/widget/Spinner;

    .line 81
    const v7, 0x7f0b02f8

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Spinner;

    iput-object v7, p0, Lcom/mediatek/engineermode/io/MsdcHopSet;->mHoppingBitSpinner:Landroid/widget/Spinner;

    .line 82
    const v7, 0x7f0b02f9

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Spinner;

    iput-object v7, p0, Lcom/mediatek/engineermode/io/MsdcHopSet;->mHoppingTimeSpinner:Landroid/widget/Spinner;

    .line 83
    iget-object v7, p0, Lcom/mediatek/engineermode/io/MsdcHopSet;->mBtnGet:Landroid/widget/Button;

    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v7, p0, Lcom/mediatek/engineermode/io/MsdcHopSet;->mBtnSet:Landroid/widget/Button;

    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 86
    .local v6, res:Landroid/content/res/Resources;
    const v7, 0x7f06003e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 87
    .local v4, itemArray:[Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .local v5, itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v7, v4

    add-int/lit8 v7, v7, -0x1

    if-ge v3, v7, :cond_1

    .line 89
    aget-object v7, v4, v3

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v3           #i:I
    .end local v4           #itemArray:[Ljava/lang/String;
    .end local v5           #itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6           #res:Landroid/content/res/Resources;
    :cond_0
    move v7, v8

    .line 77
    goto :goto_0

    .line 91
    .restart local v3       #i:I
    .restart local v4       #itemArray:[Ljava/lang/String;
    .restart local v5       #itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6       #res:Landroid/content/res/Resources;
    :cond_1
    iget-boolean v7, p0, Lcom/mediatek/engineermode/io/MsdcHopSet;->mIsNewChip:Z

    if-eqz v7, :cond_2

    .line 92
    array-length v7, v4

    add-int/lit8 v7, v7, -0x1

    aget-object v7, v4, v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_2
    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-direct {v2, p0, v10, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 96
    .local v2, hostAdaprer:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v2, v11}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 99
    iget-object v7, p0, Lcom/mediatek/engineermode/io/MsdcHopSet;->mHostSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 101
    iget-object v7, p0, Lcom/mediatek/engineermode/io/MsdcHopSet;->mHostSpinner:Landroid/widget/Spinner;

    iget-object v9, p0, Lcom/mediatek/engineermode/io/MsdcHopSet;->mSpinnerListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v7, v9}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 103
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v7, 0x7f060040

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, p0, v10, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 106
    .local v0, hopBitAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v0, v11}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 109
    iget-object v7, p0, Lcom/mediatek/engineermode/io/MsdcHopSet;->mHoppingBitSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 111
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v7, 0x7f060041

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, p0, v10, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 114
    .local v1, hopTimeAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v1, v11}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 117
    iget-object v7, p0, Lcom/mediatek/engineermode/io/MsdcHopSet;->mHoppingBitSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 118
    iget-object v7, p0, Lcom/mediatek/engineermode/io/MsdcHopSet;->mHoppingBitSpinner:Landroid/widget/Spinner;

    iget-object v9, p0, Lcom/mediatek/engineermode/io/MsdcHopSet;->mSpinnerListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v7, v9}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 120
    iget-object v7, p0, Lcom/mediatek/engineermode/io/MsdcHopSet;->mHoppingTimeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 121
    iget-object v7, p0, Lcom/mediatek/engineermode/io/MsdcHopSet;->mHoppingTimeSpinner:Landroid/widget/Spinner;

    iget-object v9, p0, Lcom/mediatek/engineermode/io/MsdcHopSet;->mSpinnerListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v7, v9}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 124
    iget-object v7, p0, Lcom/mediatek/engineermode/io/MsdcHopSet;->mHostSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7, v8}, Landroid/widget/AbsSpinner;->setSelection(I)V

    .line 125
    return-void
.end method
