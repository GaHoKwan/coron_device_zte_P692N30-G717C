.class public Lcom/mediatek/engineermode/cpustress/CpuStressTest;
.super Lcom/mediatek/engineermode/cpustress/CpuStressCommon;
.source "CpuStressTest.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# static fields
.field private static final ERROR:Ljava/lang/String; = "ERROR"

.field private static final HQA_CPU_STRESS_TEST_ITEMS:[Ljava/lang/String; = null

.field public static final INDEX_DEFAULT:I = 0x0

.field public static final INDEX_DUAL:I = 0x3

.field public static final INDEX_OCTA:I = 0x6

.field public static final INDEX_QUAD:I = 0x5

.field public static final INDEX_SINGLE:I = 0x2

.field public static final INDEX_TEST:I = 0x1

.field public static final INDEX_TRIPLE:I = 0x4

.field private static final ITEM_COUNT:I = 0x3

.field private static final RADIO_BUTTON_COUNT:I = 0x7

.field private static final TAG:Ljava/lang/String; = "EM/CpuStress"

.field public static final TEST_BACKUP:I = 0x14

.field public static final TEST_RESTORE:I = 0x28

.field private static final TYPE_LOAD_ENG:Ljava/lang/String; = "eng"


# instance fields
.field private mCbThermal:Landroid/widget/CheckBox;

.field private mListCpuTestItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRbDefault:Landroid/widget/RadioButton;

.field private mRbDual:Landroid/widget/RadioButton;

.field private mRbOcta:Landroid/widget/RadioButton;

.field private mRbQuad:Landroid/widget/RadioButton;

.field private mRbSingle:Landroid/widget/RadioButton;

.field private mRbTest:Landroid/widget/RadioButton;

.field private mRbTriple:Landroid/widget/RadioButton;

.field private mRdoBtn:[Landroid/widget/RadioButton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/mediatek/engineermode/cpustress/CpuStressTest;->HQA_CPU_STRESS_TEST_ITEMS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Lcom/mediatek/engineermode/cpustress/CpuStressCommon;-><init>()V

    .line 86
    iput-object v1, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTest;->mListCpuTestItem:Ljava/util/ArrayList;

    .line 87
    iput-object v1, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTest;->mRbDefault:Landroid/widget/RadioButton;

    .line 88
    iput-object v1, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTest;->mRbTest:Landroid/widget/RadioButton;

    .line 89
    iput-object v1, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTest;->mRbSingle:Landroid/widget/RadioButton;

    .line 90
    iput-object v1, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTest;->mRbDual:Landroid/widget/RadioButton;

    .line 91
    iput-object v1, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTest;->mRbTriple:Landroid/widget/RadioButton;

    .line 92
    iput-object v1, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTest;->mRbQuad:Landroid/widget/RadioButton;

    .line 93
    iput-object v1, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTest;->mRbOcta:Landroid/widget/RadioButton;

    .line 95
    const/4 v0, 0x7

    new-array v0, v0, [Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTest;->mRdoBtn:[Landroid/widget/RadioButton;

    .line 96
    iput-object v1, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTest;->mCbThermal:Landroid/widget/CheckBox;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/engineermode/cpustress/CpuStressTest;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/mediatek/engineermode/cpustress/CpuStressTest;->updateCbThermal()V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/engineermode/cpustress/CpuStressTest;)Landroid/widget/RadioButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTest;->mRbOcta:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/engineermode/cpustress/CpuStressTest;)Landroid/widget/RadioButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTest;->mRbTriple:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/engineermode/cpustress/CpuStressTest;)Landroid/widget/RadioButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTest;->mRbQuad:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/engineermode/cpustress/CpuStressTest;)Landroid/widget/RadioButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTest;->mRbDual:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/engineermode/cpustress/CpuStressTest;)Landroid/widget/RadioButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTest;->mRbSingle:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/engineermode/cpustress/CpuStressTest;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTest;->mCbThermal:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/engineermode/cpustress/CpuStressTest;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/cpustress/CpuStressTest;->checkRdoBtn(I)V

    return-void
.end method

.method private checkRdoBtn(I)V
    .locals 3
    .parameter "indexRdoBtn"

    .prologue
    const/4 v2, 0x1

    .line 191
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTest;->mRdoBtn:[Landroid/widget/RadioButton;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 192
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTest;->mRdoBtn:[Landroid/widget/RadioButton;

    aget-object v0, v0, p1

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 193
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTest;->mRdoBtn:[Landroid/widget/RadioButton;

    aget-object v0, v0, p1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 194
    return-void
.end method

.method private doThermalDisable(Z)V
    .locals 9
    .parameter "disableThermal"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 294
    const-string v4, "EM/CpuStress"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Enter doThermalDisable: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    sput-boolean p1, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->sIsThermalDisabled:Z

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 297
    .local v0, build:Ljava/lang/StringBuilder;
    new-instance v1, Lcom/mediatek/engineermode/emsvr/AFMFunctionCallEx;

    invoke-direct {v1}, Lcom/mediatek/engineermode/emsvr/AFMFunctionCallEx;-><init>()V

    .line 298
    .local v1, functionCall:Lcom/mediatek/engineermode/emsvr/AFMFunctionCallEx;
    const v4, 0x9c44

    invoke-virtual {v1, v4}, Lcom/mediatek/engineermode/emsvr/AFMFunctionCallEx;->startCallFunctionStringReturn(I)Z

    move-result v3

    .line 300
    .local v3, result:Z
    invoke-virtual {v1, v6}, Lcom/mediatek/engineermode/emsvr/AFMFunctionCallEx;->writeParamNo(I)Z

    .line 301
    if-eqz p1, :cond_2

    move v4, v5

    :goto_0
    invoke-virtual {v1, v4}, Lcom/mediatek/engineermode/emsvr/AFMFunctionCallEx;->writeParamInt(I)Z

    .line 302
    if-eqz v3, :cond_4

    .line 305
    :cond_0
    invoke-virtual {v1}, Lcom/mediatek/engineermode/emsvr/AFMFunctionCallEx;->getNextResult()Lcom/mediatek/engineermode/emsvr/FunctionReturn;

    move-result-object v2

    .line 306
    .local v2, r:Lcom/mediatek/engineermode/emsvr/FunctionReturn;
    iget-object v4, v2, Lcom/mediatek/engineermode/emsvr/FunctionReturn;->mReturnString:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 311
    :goto_1
    iget v4, v2, Lcom/mediatek/engineermode/emsvr/FunctionReturn;->mReturnCode:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_1

    .line 312
    const-string v4, "EM/CpuStress"

    const-string v6, "AFMFunctionCallEx: RESULT_IO_ERR"

    invoke-static {v4, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const-string v6, "ERROR"

    invoke-virtual {v0, v5, v4, v6}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .end local v2           #r:Lcom/mediatek/engineermode/emsvr/FunctionReturn;
    :cond_1
    :goto_2
    const-string v4, "EM/CpuStress"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doThermalDisable response: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    return-void

    :cond_2
    move v4, v6

    .line 301
    goto :goto_0

    .line 309
    .restart local v2       #r:Lcom/mediatek/engineermode/emsvr/FunctionReturn;
    :cond_3
    iget-object v4, v2, Lcom/mediatek/engineermode/emsvr/FunctionReturn;->mReturnString:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    iget v4, v2, Lcom/mediatek/engineermode/emsvr/FunctionReturn;->mReturnCode:I

    if-eq v4, v6, :cond_0

    goto :goto_1

    .line 316
    .end local v2           #r:Lcom/mediatek/engineermode/emsvr/FunctionReturn;
    :cond_4
    const-string v4, "EM/CpuStress"

    const-string v5, "AFMFunctionCallEx return false"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    const-string v4, "ERROR"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method private updateCbThermal()V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTest;->mCbThermal:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 186
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTest;->mCbThermal:Landroid/widget/CheckBox;

    sget-boolean v1, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->sIsThermalDisabled:Z

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 187
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTest;->mCbThermal:Landroid/widget/CheckBox;

    sget-boolean v1, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->sIsThermalSupport:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 188
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 277
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTest;->mCbThermal:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 279
    const-string v0, "EM/CpuStress"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check box checked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-direct {p0, p2}, Lcom/mediatek/engineermode/cpustress/CpuStressTest;->doThermalDisable(Z)V

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 282
    :cond_1
    const-string v0, "EM/CpuStress"

    const-string v1, "Unknown checkbox"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 5
    .parameter "group"
    .parameter "checkedId"

    .prologue
    const/4 v4, 0x7

    .line 263
    const-string v1, "EM/CpuStress"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enter onCheckedChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    const/4 v0, 0x0

    .line 265
    .local v0, index:I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 266
    iget-object v1, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTest;->mRdoBtn:[Landroid/widget/RadioButton;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne p2, v1, :cond_2

    .line 270
    :cond_0
    if-ge v0, v4, :cond_1

    .line 271
    iget-object v1, p0, Lcom/mediatek/engineermode/cpustress/CpuStressCommon;->mBoundService:Lcom/mediatek/engineermode/cpustress/CpuStressTestService;

    invoke-virtual {v1, v0}, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->setIndexMode(I)V

    .line 273
    :cond_1
    return-void

    .line 265
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 100
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 101
    const v3, 0x7f03003f

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setContentView(I)V

    .line 102
    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v4, "eng"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 103
    const v3, 0x7f080116

    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 105
    const-string v3, "EM/CpuStress"

    const-string v4, "Not eng load, finish"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 182
    :goto_0
    return-void

    .line 109
    :cond_0
    new-instance v3, Lcom/mediatek/engineermode/cpustress/CpuStressTest$1;

    invoke-direct {v3, p0}, Lcom/mediatek/engineermode/cpustress/CpuStressTest$1;-><init>(Lcom/mediatek/engineermode/cpustress/CpuStressTest;)V

    iput-object v3, p0, Lcom/mediatek/engineermode/cpustress/CpuStressCommon;->mHandler:Landroid/os/Handler;

    .line 151
    sget-object v3, Lcom/mediatek/engineermode/cpustress/CpuStressTest;->HQA_CPU_STRESS_TEST_ITEMS:[Ljava/lang/String;

    const v4, 0x7f08012e

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 152
    sget-object v3, Lcom/mediatek/engineermode/cpustress/CpuStressTest;->HQA_CPU_STRESS_TEST_ITEMS:[Ljava/lang/String;

    const v4, 0x7f080152

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 153
    sget-object v3, Lcom/mediatek/engineermode/cpustress/CpuStressTest;->HQA_CPU_STRESS_TEST_ITEMS:[Ljava/lang/String;

    const v4, 0x7f080144

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    .line 154
    const v3, 0x7f0b01b0

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 155
    .local v2, testItemList:Landroid/widget/ListView;
    const v3, 0x7f0b01b1

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    .line 156
    .local v1, rgRadioGroup:Landroid/widget/RadioGroup;
    const v3, 0x7f0b01b2

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTest;->mRbDefault:Landroid/widget/RadioButton;

    .line 157
    const v3, 0x7f0b01b3

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTest;->mRbTest:Landroid/widget/RadioButton;

    .line 158
    const v3, 0x7f0b01b4

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTest;->mRbSingle:Landroid/widget/RadioButton;

    .line 159
    const v3, 0x7f0b01b5

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTest;->mRbDual:Landroid/widget/RadioButton;

    .line 160
    const v3, 0x7f0b01b6

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTest;->mRbTriple:Landroid/widget/RadioButton;

    .line 161
    const v3, 0x7f0b01b7

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTest;->mRbQuad:Landroid/widget/RadioButton;

    .line 162
    const v3, 0x7f0b01b8

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTest;->mRbOcta:Landroid/widget/RadioButton;

    .line 163
    const v3, 0x7f0b01b9

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTest;->mCbThermal:Landroid/widget/CheckBox;

    .line 164
    iget-object v3, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTest;->mRdoBtn:[Landroid/widget/RadioButton;

    iget-object v4, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTest;->mRbDefault:Landroid/widget/RadioButton;

    aput-object v4, v3, v6

    .line 165
    iget-object v3, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTest;->mRdoBtn:[Landroid/widget/RadioButton;

    iget-object v4, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTest;->mRbTest:Landroid/widget/RadioButton;

    aput-object v4, v3, v5

    .line 166
    iget-object v3, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTest;->mRdoBtn:[Landroid/widget/RadioButton;

    iget-object v4, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTest;->mRbSingle:Landroid/widget/RadioButton;

    aput-object v4, v3, v7

    .line 167
    iget-object v3, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTest;->mRdoBtn:[Landroid/widget/RadioButton;

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTest;->mRbDual:Landroid/widget/RadioButton;

    aput-object v5, v3, v4

    .line 168
    iget-object v3, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTest;->mRdoBtn:[Landroid/widget/RadioButton;

    const/4 v4, 0x4

    iget-object v5, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTest;->mRbTriple:Landroid/widget/RadioButton;

    aput-object v5, v3, v4

    .line 169
    iget-object v3, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTest;->mRdoBtn:[Landroid/widget/RadioButton;

    const/4 v4, 0x5

    iget-object v5, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTest;->mRbQuad:Landroid/widget/RadioButton;

    aput-object v5, v3, v4

    .line 170
    iget-object v3, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTest;->mRdoBtn:[Landroid/widget/RadioButton;

    const/4 v4, 0x6

    iget-object v5, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTest;->mRbOcta:Landroid/widget/RadioButton;

    aput-object v5, v3, v4

    .line 171
    new-instance v3, Ljava/util/ArrayList;

    sget-object v4, Lcom/mediatek/engineermode/cpustress/CpuStressTest;->HQA_CPU_STRESS_TEST_ITEMS:[Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTest;->mListCpuTestItem:Ljava/util/ArrayList;

    .line 172
    iget-object v3, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTest;->mListCpuTestItem:Ljava/util/ArrayList;

    const v4, 0x7f08047a

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v3, 0x1090003

    iget-object v4, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTest;->mListCpuTestItem:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 175
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 176
    invoke-virtual {v2, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 177
    invoke-virtual {v1, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 178
    iget-object v3, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTest;->mCbThermal:Landroid/widget/CheckBox;

    invoke-virtual {v3, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 179
    invoke-virtual {p0, v6}, Lcom/mediatek/engineermode/cpustress/CpuStressTest;->updateRadioGroup(Z)V

    .line 180
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v3}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 181
    const-string v3, "EM/CpuStress"

    const-string v4, "start cpu test service"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const v6, 0x7f08047a

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 215
    const/4 v0, 0x0

    .line 216
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "EM/CpuStress"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User select: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTest;->mListCpuTestItem:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v1, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTest;->mListCpuTestItem:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 218
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-class v1, Lcom/mediatek/engineermode/FeatureHelpPage;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 219
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "helpTitle"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 220
    const/16 v1, 0x10

    invoke-static {}, Lcom/mediatek/engineermode/ChipSupport;->getChip()I

    move-result v2

    if-gt v1, v2, :cond_0

    .line 221
    const-string v1, "helpMessage"

    const v2, 0x7f08015b

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 227
    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 259
    :goto_1
    return-void

    .line 224
    :cond_0
    const-string v1, "helpMessage"

    const v2, 0x7f08015a

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 230
    :cond_1
    sget v1, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->sIndexMode:I

    if-nez v1, :cond_2

    .line 231
    const v1, 0x7f08011b

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 233
    const-string v1, "EM/CpuStress"

    const-string v2, "Not select mode"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 235
    :cond_2
    iget-object v1, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTest;->mListCpuTestItem:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const v2, 0x7f08012e

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 237
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-class v1, Lcom/mediatek/engineermode/cpustress/ApMcu;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 251
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_3
    :goto_2
    if-nez v0, :cond_6

    .line 252
    const v1, 0x7f08011c

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 254
    const-string v1, "EM/CpuStress"

    const-string v2, "Select error"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 238
    :cond_4
    iget-object v1, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTest;->mListCpuTestItem:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const v2, 0x7f080152

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 240
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-class v1, Lcom/mediatek/engineermode/cpustress/SwVideoCodec;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v0       #intent:Landroid/content/Intent;
    goto :goto_2

    .line 241
    :cond_5
    iget-object v1, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTest;->mListCpuTestItem:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const v2, 0x7f080144

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 243
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-class v1, Lcom/mediatek/engineermode/cpustress/ClockSwitch;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 244
    .restart local v0       #intent:Landroid/content/Intent;
    sget v1, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->sIndexMode:I

    if-le v5, v1, :cond_3

    sget v1, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->sCoreNumber:I

    if-gt v5, v1, :cond_3

    .line 246
    const v1, 0x7f08011e

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 256
    :cond_6
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1
.end method

.method protected updateRadioGroup(Z)V
    .locals 3
    .parameter "testRunning"

    .prologue
    .line 203
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    .line 204
    iget-object v1, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTest;->mRdoBtn:[Landroid/widget/RadioButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 203
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 206
    :cond_0
    iget-object v1, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTest;->mCbThermal:Landroid/widget/CheckBox;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 207
    if-eqz p1, :cond_1

    sget-boolean v1, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->sIsThermalSupport:Z

    if-nez v1, :cond_1

    .line 208
    iget-object v1, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTest;->mCbThermal:Landroid/widget/CheckBox;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 210
    :cond_1
    const/16 v1, 0x3e9

    invoke-virtual {p0, v1}, Landroid/app/Activity;->removeDialog(I)V

    .line 211
    return-void
.end method
