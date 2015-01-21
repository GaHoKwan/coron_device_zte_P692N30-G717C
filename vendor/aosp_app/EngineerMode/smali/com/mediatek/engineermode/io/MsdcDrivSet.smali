.class public Lcom/mediatek/engineermode/io/MsdcDrivSet;
.super Lcom/mediatek/engineermode/io/MsdcTest;
.source "MsdcDrivSet.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DATA_BIT:I = 0xf

.field private static final OFFSET_EIGHT_BIT:I = 0x8

.field private static final OFFSET_FOUR_BIT:I = 0x4

.field private static final OFFSET_SIXTEEN_BIT:I = 0x10

.field private static final OFFSET_TWELVE_BIT:I = 0xc

.field private static final OFFSET_TWENTY_BIT:I = 0x14

.field private static final TAG:Ljava/lang/String; = "MSDC_IOCTL"


# instance fields
.field private mBtnGet:Landroid/widget/Button;

.field private mBtnSet:Landroid/widget/Button;

.field private mClkPdIndex:I

.field private mClkPdSpinner:Landroid/widget/Spinner;

.field private mClkPuIndex:I

.field private mClkPuSpinner:Landroid/widget/Spinner;

.field private mCmdPdIndex:I

.field private mCmdPdSpinner:Landroid/widget/Spinner;

.field private mCmdPuIndex:I

.field private mCmdPuSpinner:Landroid/widget/Spinner;

.field private mDataPdSpinner:Landroid/widget/Spinner;

.field private mDataPdndex:I

.field private mDataPuIndex:I

.field private mDataPuSpinner:Landroid/widget/Spinner;

.field private mHostIndex:I

.field private mHostSpinner:Landroid/widget/Spinner;

.field private mIsNewChip:Z

.field private final mSpinnerListener:Landroid/widget/AdapterView$OnItemSelectedListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Lcom/mediatek/engineermode/io/MsdcTest;-><init>()V

    .line 70
    iput v0, p0, Lcom/mediatek/engineermode/io/MsdcDrivSet;->mHostIndex:I

    .line 73
    iput v0, p0, Lcom/mediatek/engineermode/io/MsdcDrivSet;->mClkPuIndex:I

    .line 76
    iput v0, p0, Lcom/mediatek/engineermode/io/MsdcDrivSet;->mClkPdIndex:I

    .line 79
    iput v0, p0, Lcom/mediatek/engineermode/io/MsdcDrivSet;->mCmdPuIndex:I

    .line 82
    iput v0, p0, Lcom/mediatek/engineermode/io/MsdcDrivSet;->mCmdPdIndex:I

    .line 85
    iput v0, p0, Lcom/mediatek/engineermode/io/MsdcDrivSet;->mDataPuIndex:I

    .line 88
    iput v0, p0, Lcom/mediatek/engineermode/io/MsdcDrivSet;->mDataPdndex:I

    .line 91
    iput-boolean v0, p0, Lcom/mediatek/engineermode/io/MsdcDrivSet;->mIsNewChip:Z

    .line 257
    new-instance v0, Lcom/mediatek/engineermode/io/MsdcDrivSet$1;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/io/MsdcDrivSet$1;-><init>(Lcom/mediatek/engineermode/io/MsdcDrivSet;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/io/MsdcDrivSet;->mSpinnerListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-void
.end method

.method static synthetic access$002(Lcom/mediatek/engineermode/io/MsdcDrivSet;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput p1, p0, Lcom/mediatek/engineermode/io/MsdcDrivSet;->mHostIndex:I

    return p1
.end method

.method static synthetic access$102(Lcom/mediatek/engineermode/io/MsdcDrivSet;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput p1, p0, Lcom/mediatek/engineermode/io/MsdcDrivSet;->mClkPuIndex:I

    return p1
.end method

.method static synthetic access$202(Lcom/mediatek/engineermode/io/MsdcDrivSet;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput p1, p0, Lcom/mediatek/engineermode/io/MsdcDrivSet;->mClkPdIndex:I

    return p1
.end method

.method static synthetic access$302(Lcom/mediatek/engineermode/io/MsdcDrivSet;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput p1, p0, Lcom/mediatek/engineermode/io/MsdcDrivSet;->mCmdPuIndex:I

    return p1
.end method

.method static synthetic access$402(Lcom/mediatek/engineermode/io/MsdcDrivSet;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput p1, p0, Lcom/mediatek/engineermode/io/MsdcDrivSet;->mCmdPdIndex:I

    return p1
.end method

.method static synthetic access$502(Lcom/mediatek/engineermode/io/MsdcDrivSet;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput p1, p0, Lcom/mediatek/engineermode/io/MsdcDrivSet;->mDataPuIndex:I

    return p1
.end method

.method static synthetic access$602(Lcom/mediatek/engineermode/io/MsdcDrivSet;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput p1, p0, Lcom/mediatek/engineermode/io/MsdcDrivSet;->mDataPdndex:I

    return p1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 19
    .parameter "arg0"

    .prologue
    .line 196
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/engineermode/io/MsdcDrivSet;->mBtnGet:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 197
    const-string v1, "MSDC_IOCTL"

    const-string v2, "SD_IOCTL: click GetCurrent"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    move-object/from16 v0, p0

    iget v1, v0, Lcom/mediatek/engineermode/io/MsdcDrivSet;->mHostIndex:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/io/EmGpio;->newGetCurrent(II)I

    move-result v17

    .line 199
    .local v17, idx:I
    const/4 v1, -0x1

    move/from16 v0, v17

    if-eq v0, v1, :cond_1

    .line 200
    and-int/lit8 v12, v17, 0xf

    .line 201
    .local v12, clkpuIdx:I
    shr-int/lit8 v1, v17, 0x4

    and-int/lit8 v11, v1, 0xf

    .line 202
    .local v11, clkpdIdx:I
    shr-int/lit8 v1, v17, 0x8

    and-int/lit8 v14, v1, 0xf

    .line 203
    .local v14, cmdpuIdx:I
    shr-int/lit8 v1, v17, 0xc

    and-int/lit8 v13, v1, 0xf

    .line 204
    .local v13, cmdpdIdx:I
    shr-int/lit8 v1, v17, 0x10

    and-int/lit8 v16, v1, 0xf

    .line 205
    .local v16, datapuIdx:I
    shr-int/lit8 v1, v17, 0x14

    and-int/lit8 v15, v1, 0xf

    .line 206
    .local v15, datapdIdx:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/engineermode/io/MsdcDrivSet;->mClkPuSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v12}, Landroid/widget/AbsSpinner;->setSelection(I)V

    .line 207
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/engineermode/io/MsdcDrivSet;->mCmdPuSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v14}, Landroid/widget/AbsSpinner;->setSelection(I)V

    .line 208
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/engineermode/io/MsdcDrivSet;->mDataPuSpinner:Landroid/widget/Spinner;

    move/from16 v0, v16

    invoke-virtual {v1, v0}, Landroid/widget/AbsSpinner;->setSelection(I)V

    .line 209
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/mediatek/engineermode/io/MsdcDrivSet;->mIsNewChip:Z

    if-nez v1, :cond_0

    .line 210
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/engineermode/io/MsdcDrivSet;->mClkPdSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v11}, Landroid/widget/AbsSpinner;->setSelection(I)V

    .line 211
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/engineermode/io/MsdcDrivSet;->mCmdPdSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v13}, Landroid/widget/AbsSpinner;->setSelection(I)V

    .line 212
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/engineermode/io/MsdcDrivSet;->mDataPdSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v15}, Landroid/widget/AbsSpinner;->setSelection(I)V

    .line 229
    .end local v11           #clkpdIdx:I
    .end local v12           #clkpuIdx:I
    .end local v13           #cmdpdIdx:I
    .end local v14           #cmdpuIdx:I
    .end local v15           #datapdIdx:I
    .end local v16           #datapuIdx:I
    .end local v17           #idx:I
    :cond_0
    :goto_0
    return-void

    .line 215
    .restart local v17       #idx:I
    :cond_1
    const/16 v1, 0x6e

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 218
    .end local v17           #idx:I
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/engineermode/io/MsdcDrivSet;->mBtnSet:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 220
    move-object/from16 v0, p0

    iget v1, v0, Lcom/mediatek/engineermode/io/MsdcDrivSet;->mHostIndex:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/mediatek/engineermode/io/MsdcDrivSet;->mClkPuIndex:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/mediatek/engineermode/io/MsdcDrivSet;->mClkPdIndex:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/mediatek/engineermode/io/MsdcDrivSet;->mCmdPuIndex:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/mediatek/engineermode/io/MsdcDrivSet;->mCmdPdIndex:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/mediatek/engineermode/io/MsdcDrivSet;->mDataPuIndex:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/mediatek/engineermode/io/MsdcDrivSet;->mDataPdndex:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v1 .. v10}, Lcom/mediatek/engineermode/io/EmGpio;->newSetCurrent(IIIIIIIIII)Z

    move-result v18

    .line 223
    .local v18, ret:Z
    if-eqz v18, :cond_3

    .line 224
    const/16 v1, 0x64

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 226
    :cond_3
    const/16 v1, 0x65

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    .line 96
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 97
    const v8, 0x7f030068

    invoke-virtual {p0, v8}, Landroid/app/Activity;->setContentView(I)V

    .line 98
    const/16 v8, 0x10

    invoke-static {}, Lcom/mediatek/engineermode/ChipSupport;->getChip()I

    move-result v9

    if-gt v8, v9, :cond_0

    const/4 v8, 0x1

    :goto_0
    iput-boolean v8, p0, Lcom/mediatek/engineermode/io/MsdcDrivSet;->mIsNewChip:Z

    .line 99
    const v8, 0x7f0b0370

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/mediatek/engineermode/io/MsdcDrivSet;->mBtnGet:Landroid/widget/Button;

    .line 100
    const v8, 0x7f0b0371

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/mediatek/engineermode/io/MsdcDrivSet;->mBtnSet:Landroid/widget/Button;

    .line 102
    const v8, 0x7f0b0363

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Spinner;

    iput-object v8, p0, Lcom/mediatek/engineermode/io/MsdcDrivSet;->mHostSpinner:Landroid/widget/Spinner;

    .line 104
    const v8, 0x7f0b0365

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Spinner;

    iput-object v8, p0, Lcom/mediatek/engineermode/io/MsdcDrivSet;->mClkPuSpinner:Landroid/widget/Spinner;

    .line 105
    const v8, 0x7f0b0367

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Spinner;

    iput-object v8, p0, Lcom/mediatek/engineermode/io/MsdcDrivSet;->mClkPdSpinner:Landroid/widget/Spinner;

    .line 107
    const v8, 0x7f0b0369

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Spinner;

    iput-object v8, p0, Lcom/mediatek/engineermode/io/MsdcDrivSet;->mCmdPuSpinner:Landroid/widget/Spinner;

    .line 108
    const v8, 0x7f0b036b

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Spinner;

    iput-object v8, p0, Lcom/mediatek/engineermode/io/MsdcDrivSet;->mCmdPdSpinner:Landroid/widget/Spinner;

    .line 110
    const v8, 0x7f0b036d

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Spinner;

    iput-object v8, p0, Lcom/mediatek/engineermode/io/MsdcDrivSet;->mDataPuSpinner:Landroid/widget/Spinner;

    .line 111
    const v8, 0x7f0b036f

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Spinner;

    iput-object v8, p0, Lcom/mediatek/engineermode/io/MsdcDrivSet;->mDataPdSpinner:Landroid/widget/Spinner;

    .line 113
    iget-object v8, p0, Lcom/mediatek/engineermode/io/MsdcDrivSet;->mBtnGet:Landroid/widget/Button;

    invoke-virtual {v8, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v8, p0, Lcom/mediatek/engineermode/io/MsdcDrivSet;->mBtnSet:Landroid/widget/Button;

    invoke-virtual {v8, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 116
    .local v6, res:Landroid/content/res/Resources;
    const v8, 0x7f06003e

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 117
    .local v3, itemArray:[Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .local v4, itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v8, v3

    add-int/lit8 v8, v8, -0x1

    if-ge v2, v8, :cond_1

    .line 119
    aget-object v8, v3, v2

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 98
    .end local v2           #i:I
    .end local v3           #itemArray:[Ljava/lang/String;
    .end local v4           #itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6           #res:Landroid/content/res/Resources;
    :cond_0
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 121
    .restart local v2       #i:I
    .restart local v3       #itemArray:[Ljava/lang/String;
    .restart local v4       #itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6       #res:Landroid/content/res/Resources;
    :cond_1
    const-string v8, "MSDC_IOCTL"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "New chip? "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/mediatek/engineermode/io/MsdcDrivSet;->mIsNewChip:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-boolean v8, p0, Lcom/mediatek/engineermode/io/MsdcDrivSet;->mIsNewChip:Z

    if-eqz v8, :cond_2

    .line 123
    array-length v8, v3

    add-int/lit8 v8, v8, -0x1

    aget-object v8, v3, v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    :cond_2
    iget-boolean v8, p0, Lcom/mediatek/engineermode/io/MsdcDrivSet;->mIsNewChip:Z

    if-eqz v8, :cond_3

    .line 126
    const/4 v7, 0x0

    .line 127
    .local v7, tempView:Landroid/widget/TextView;
    const v8, 0x7f0b0364

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7           #tempView:Landroid/widget/TextView;
    check-cast v7, Landroid/widget/TextView;

    .line 128
    .restart local v7       #tempView:Landroid/widget/TextView;
    const v8, 0x7f0800eb

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 129
    const v8, 0x7f0b0368

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7           #tempView:Landroid/widget/TextView;
    check-cast v7, Landroid/widget/TextView;

    .line 130
    .restart local v7       #tempView:Landroid/widget/TextView;
    const v8, 0x7f0800ec

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 131
    const v8, 0x7f0b036c

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7           #tempView:Landroid/widget/TextView;
    check-cast v7, Landroid/widget/TextView;

    .line 132
    .restart local v7       #tempView:Landroid/widget/TextView;
    const v8, 0x7f0800ed

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 133
    const v8, 0x7f0b0366

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 134
    const v8, 0x7f0b036a

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 135
    const v8, 0x7f0b036e

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 136
    iget-object v8, p0, Lcom/mediatek/engineermode/io/MsdcDrivSet;->mClkPdSpinner:Landroid/widget/Spinner;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 137
    iget-object v8, p0, Lcom/mediatek/engineermode/io/MsdcDrivSet;->mCmdPdSpinner:Landroid/widget/Spinner;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 138
    iget-object v8, p0, Lcom/mediatek/engineermode/io/MsdcDrivSet;->mDataPdSpinner:Landroid/widget/Spinner;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 141
    .end local v7           #tempView:Landroid/widget/TextView;
    :cond_3
    sget-object v8, Lcom/mediatek/engineermode/ChipSupport;->CHIP_657X_SERIES_NEW:[I

    invoke-static {v8}, Lcom/mediatek/engineermode/ChipSupport;->isChipInSet([I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 143
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v5, v8, -0x1

    .local v5, j:I
    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x2

    if-le v8, v9, :cond_4

    .line 144
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 143
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 146
    :cond_4
    const/16 v8, 0x20

    invoke-static {v8}, Lcom/mediatek/engineermode/ChipSupport;->isCurrentChipEquals(I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 147
    const v8, 0x7f0b0368

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 148
    iget-object v8, p0, Lcom/mediatek/engineermode/io/MsdcDrivSet;->mCmdPuSpinner:Landroid/widget/Spinner;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 149
    const v8, 0x7f0b036c

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 150
    iget-object v8, p0, Lcom/mediatek/engineermode/io/MsdcDrivSet;->mDataPuSpinner:Landroid/widget/Spinner;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 151
    const v8, 0x7f0b0364

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const v10, 0x7f0800eb

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " / "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0x7f0800ec

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " / "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0x7f0800ed

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    .end local v5           #j:I
    :cond_5
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v8, 0x1090008

    invoke-direct {v1, p0, v8, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 160
    .local v1, hostAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v8, 0x1090009

    invoke-virtual {v1, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 162
    iget-object v8, p0, Lcom/mediatek/engineermode/io/MsdcDrivSet;->mHostSpinner:Landroid/widget/Spinner;

    invoke-virtual {v8, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 164
    iget-object v8, p0, Lcom/mediatek/engineermode/io/MsdcDrivSet;->mHostSpinner:Landroid/widget/Spinner;

    iget-object v9, p0, Lcom/mediatek/engineermode/io/MsdcDrivSet;->mSpinnerListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v8, v9}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 166
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v8, 0x1090008

    const v9, 0x7f060042

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, p0, v8, v9}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 169
    .local v0, commonAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v8, 0x1090009

    invoke-virtual {v0, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 172
    iget-object v8, p0, Lcom/mediatek/engineermode/io/MsdcDrivSet;->mClkPuSpinner:Landroid/widget/Spinner;

    invoke-virtual {v8, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 173
    iget-object v8, p0, Lcom/mediatek/engineermode/io/MsdcDrivSet;->mClkPuSpinner:Landroid/widget/Spinner;

    iget-object v9, p0, Lcom/mediatek/engineermode/io/MsdcDrivSet;->mSpinnerListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v8, v9}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 175
    iget-object v8, p0, Lcom/mediatek/engineermode/io/MsdcDrivSet;->mClkPdSpinner:Landroid/widget/Spinner;

    invoke-virtual {v8, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 176
    iget-object v8, p0, Lcom/mediatek/engineermode/io/MsdcDrivSet;->mClkPdSpinner:Landroid/widget/Spinner;

    iget-object v9, p0, Lcom/mediatek/engineermode/io/MsdcDrivSet;->mSpinnerListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v8, v9}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 178
    iget-object v8, p0, Lcom/mediatek/engineermode/io/MsdcDrivSet;->mCmdPuSpinner:Landroid/widget/Spinner;

    invoke-virtual {v8, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 179
    iget-object v8, p0, Lcom/mediatek/engineermode/io/MsdcDrivSet;->mCmdPuSpinner:Landroid/widget/Spinner;

    iget-object v9, p0, Lcom/mediatek/engineermode/io/MsdcDrivSet;->mSpinnerListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v8, v9}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 181
    iget-object v8, p0, Lcom/mediatek/engineermode/io/MsdcDrivSet;->mCmdPdSpinner:Landroid/widget/Spinner;

    invoke-virtual {v8, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 182
    iget-object v8, p0, Lcom/mediatek/engineermode/io/MsdcDrivSet;->mCmdPdSpinner:Landroid/widget/Spinner;

    iget-object v9, p0, Lcom/mediatek/engineermode/io/MsdcDrivSet;->mSpinnerListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v8, v9}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 184
    iget-object v8, p0, Lcom/mediatek/engineermode/io/MsdcDrivSet;->mDataPuSpinner:Landroid/widget/Spinner;

    invoke-virtual {v8, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 185
    iget-object v8, p0, Lcom/mediatek/engineermode/io/MsdcDrivSet;->mDataPuSpinner:Landroid/widget/Spinner;

    iget-object v9, p0, Lcom/mediatek/engineermode/io/MsdcDrivSet;->mSpinnerListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v8, v9}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 187
    iget-object v8, p0, Lcom/mediatek/engineermode/io/MsdcDrivSet;->mDataPdSpinner:Landroid/widget/Spinner;

    invoke-virtual {v8, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 188
    iget-object v8, p0, Lcom/mediatek/engineermode/io/MsdcDrivSet;->mDataPdSpinner:Landroid/widget/Spinner;

    iget-object v9, p0, Lcom/mediatek/engineermode/io/MsdcDrivSet;->mSpinnerListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v8, v9}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 190
    iget-object v8, p0, Lcom/mediatek/engineermode/io/MsdcDrivSet;->mHostSpinner:Landroid/widget/Spinner;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/AbsSpinner;->setSelection(I)V

    .line 192
    return-void
.end method
