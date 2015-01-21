.class public Lcom/mediatek/engineermode/lcm/LCM;
.super Landroid/app/Activity;
.source "LCM.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final CHECK_DATA_FINISHED:I = 0x10

.field private static final DIALOG_CHECK_DATA:I = 0x64


# instance fields
.field private TAG:Ljava/lang/String;

.field private mCycleString:Ljava/lang/String;

.field private mCycleText:Landroid/widget/EditText;

.field private mHandler:Landroid/os/Handler;

.field private mInterfaceType:I

.field private mMipiString:Ljava/lang/String;

.field private mMipiText:Landroid/widget/EditText;

.field private mSetButton:Landroid/widget/Button;

.field private mTmStatus:Ljava/lang/String;

.field private mTmToggleButton:Landroid/widget/ToggleButton;

.field private mbIsBTPoweredOff:Z

.field private mbIsDataDetected:Z

.field private mbIsDialogShowed:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/engineermode/lcm/LCM;->mHandler:Landroid/os/Handler;

    .line 68
    iput-boolean v1, p0, Lcom/mediatek/engineermode/lcm/LCM;->mbIsDialogShowed:Z

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/engineermode/lcm/LCM;->mbIsBTPoweredOff:Z

    .line 70
    iput-boolean v1, p0, Lcom/mediatek/engineermode/lcm/LCM;->mbIsDataDetected:Z

    .line 75
    const-string v0, "OFF"

    iput-object v0, p0, Lcom/mediatek/engineermode/lcm/LCM;->mTmStatus:Ljava/lang/String;

    .line 76
    const-string v0, "12"

    iput-object v0, p0, Lcom/mediatek/engineermode/lcm/LCM;->mCycleString:Ljava/lang/String;

    .line 77
    const-string v0, "50"

    iput-object v0, p0, Lcom/mediatek/engineermode/lcm/LCM;->mMipiString:Ljava/lang/String;

    .line 80
    iput v1, p0, Lcom/mediatek/engineermode/lcm/LCM;->mInterfaceType:I

    .line 82
    const-string v0, "EM/lcm"

    iput-object v0, p0, Lcom/mediatek/engineermode/lcm/LCM;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/engineermode/lcm/LCM;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/mediatek/engineermode/lcm/LCM;->mInterfaceType:I

    return v0
.end method

.method static synthetic access$002(Lcom/mediatek/engineermode/lcm/LCM;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput p1, p0, Lcom/mediatek/engineermode/lcm/LCM;->mInterfaceType:I

    return p1
.end method

.method static synthetic access$100(Lcom/mediatek/engineermode/lcm/LCM;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mediatek/engineermode/lcm/LCM;->mCycleString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mediatek/engineermode/lcm/LCM;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mediatek/engineermode/lcm/LCM;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$102(Lcom/mediatek/engineermode/lcm/LCM;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/mediatek/engineermode/lcm/LCM;->mCycleString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/mediatek/engineermode/lcm/LCM;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mediatek/engineermode/lcm/LCM;->mCycleText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/engineermode/lcm/LCM;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mediatek/engineermode/lcm/LCM;->mMipiText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/engineermode/lcm/LCM;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mediatek/engineermode/lcm/LCM;->mMipiString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/mediatek/engineermode/lcm/LCM;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/mediatek/engineermode/lcm/LCM;->mMipiString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/mediatek/engineermode/lcm/LCM;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mediatek/engineermode/lcm/LCM;->mTmStatus:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/mediatek/engineermode/lcm/LCM;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/mediatek/engineermode/lcm/LCM;->mTmStatus:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/mediatek/engineermode/lcm/LCM;)Landroid/widget/ToggleButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mediatek/engineermode/lcm/LCM;->mTmToggleButton:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic access$702(Lcom/mediatek/engineermode/lcm/LCM;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/mediatek/engineermode/lcm/LCM;->mbIsDataDetected:Z

    return p1
.end method

.method static synthetic access$800(Lcom/mediatek/engineermode/lcm/LCM;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/mediatek/engineermode/lcm/LCM;->mbIsDialogShowed:Z

    return v0
.end method

.method static synthetic access$900(Lcom/mediatek/engineermode/lcm/LCM;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mediatek/engineermode/lcm/LCM;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    const/4 v8, 0x0

    .line 223
    iget-object v5, p0, Lcom/mediatek/engineermode/lcm/LCM;->TAG:Ljava/lang/String;

    const-string v6, "-->onClick"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    iget-object v6, p0, Lcom/mediatek/engineermode/lcm/LCM;->mTmToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v6

    if-ne v5, v6, :cond_2

    .line 226
    iget-object v5, p0, Lcom/mediatek/engineermode/lcm/LCM;->mTmToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/engineermode/lcm/LCM;->mTmStatus:Ljava/lang/String;

    .line 227
    iget-object v5, p0, Lcom/mediatek/engineermode/lcm/LCM;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-->onClick--mTmToggleButton--"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/engineermode/lcm/LCM;->mTmStatus:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v5, p0, Lcom/mediatek/engineermode/lcm/LCM;->mTmStatus:Ljava/lang/String;

    const-string v6, "ON"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 229
    const/4 v5, 0x1

    invoke-static {v5}, Lcom/mediatek/engineermode/lcm/EmDsenseLcmAssit;->LCMSetTm(I)I

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    iget-object v5, p0, Lcom/mediatek/engineermode/lcm/LCM;->mTmStatus:Ljava/lang/String;

    const-string v6, "OFF"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 231
    invoke-static {v8}, Lcom/mediatek/engineermode/lcm/EmDsenseLcmAssit;->LCMSetTm(I)I

    goto :goto_0

    .line 234
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    iget-object v6, p0, Lcom/mediatek/engineermode/lcm/LCM;->mSetButton:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 235
    iget-object v5, p0, Lcom/mediatek/engineermode/lcm/LCM;->TAG:Ljava/lang/String;

    const-string v6, "-->onClick--mSetButton"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget v5, p0, Lcom/mediatek/engineermode/lcm/LCM;->mInterfaceType:I

    if-nez v5, :cond_6

    .line 238
    iget-object v5, p0, Lcom/mediatek/engineermode/lcm/LCM;->mCycleText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 239
    .local v3, tmpCycle:Ljava/lang/String;
    iget-object v5, p0, Lcom/mediatek/engineermode/lcm/LCM;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mCycleString = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/engineermode/lcm/LCM;->mCycleString:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " new="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v5, p0, Lcom/mediatek/engineermode/lcm/LCM;->mCycleString:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 243
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 244
    .local v0, cycleValue:I
    const/4 v5, 0x4

    if-le v0, v5, :cond_4

    const/16 v5, 0x38

    if-ge v0, v5, :cond_4

    .line 246
    invoke-static {v0}, Lcom/mediatek/engineermode/lcm/EmDsenseLcmAssit;->LCDWriteCycleSetVal(I)I

    move-result v5

    if-nez v5, :cond_3

    .line 247
    iget-object v5, p0, Lcom/mediatek/engineermode/lcm/LCM;->mCycleText:Landroid/widget/EditText;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "set cycle number success:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 265
    .end local v0           #cycleValue:I
    :catch_0
    move-exception v1

    .line 267
    .local v1, e:Ljava/lang/Exception;
    iget-object v5, p0, Lcom/mediatek/engineermode/lcm/LCM;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "--setButton--"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "Please input differnt cycle number between 5~55!"

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 252
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #cycleValue:I
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "set cycle number return fail:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 259
    :cond_4
    iget-object v5, p0, Lcom/mediatek/engineermode/lcm/LCM;->TAG:Ljava/lang/String;

    const-string v6, "--cycleValue--is not in 5~55!"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "Please input cycle number between 5~55."

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 274
    .end local v0           #cycleValue:I
    :cond_5
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "Please input cycle number between 5~55."

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 279
    .end local v3           #tmpCycle:Ljava/lang/String;
    :cond_6
    iget v5, p0, Lcom/mediatek/engineermode/lcm/LCM;->mInterfaceType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 280
    iget-object v5, p0, Lcom/mediatek/engineermode/lcm/LCM;->mMipiText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 281
    .local v4, tmpMipi:Ljava/lang/String;
    iget-object v5, p0, Lcom/mediatek/engineermode/lcm/LCM;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mMipiString = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/engineermode/lcm/LCM;->mMipiString:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  new="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v5, p0, Lcom/mediatek/engineermode/lcm/LCM;->mMipiString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 284
    :try_start_2
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 285
    .local v2, mipiValue:I
    if-lez v2, :cond_7

    const/16 v5, 0x3e9

    if-ge v2, v5, :cond_7

    .line 286
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Lcom/mediatek/engineermode/lcm/EmDsenseLcmAssit;->LCMSetMipi(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/engineermode/lcm/LCM;->mMipiString:Ljava/lang/String;

    .line 287
    iget-object v5, p0, Lcom/mediatek/engineermode/lcm/LCM;->mMipiText:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/mediatek/engineermode/lcm/LCM;->mMipiString:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "set mipi clock success:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/engineermode/lcm/LCM;->mMipiString:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 298
    .end local v2           #mipiValue:I
    :catch_1
    move-exception v1

    .line 300
    .restart local v1       #e:Ljava/lang/Exception;
    iget-object v5, p0, Lcom/mediatek/engineermode/lcm/LCM;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setButton--"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "Please input mipi clock between 0~1000!"

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 292
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #mipiValue:I
    :cond_7
    :try_start_3
    iget-object v5, p0, Lcom/mediatek/engineermode/lcm/LCM;->TAG:Ljava/lang/String;

    const-string v6, "--mipiValue--is not in 0~1000!"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "Please input mipi clock between 0~1000!"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 307
    .end local v2           #mipiValue:I
    :cond_8
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "Please input differnt mipi clock between 0~1000!"

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/engineermode/lcm/LCM;->TAG:Ljava/lang/String;

    const-string v1, "-->onCreate"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    const v0, 0x7f030043

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 91
    const v0, 0x7f0b0210

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mediatek/engineermode/lcm/LCM;->mCycleText:Landroid/widget/EditText;

    .line 92
    const v0, 0x7f0b0212

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mediatek/engineermode/lcm/LCM;->mMipiText:Landroid/widget/EditText;

    .line 94
    const v0, 0x7f0b020f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/mediatek/engineermode/lcm/LCM;->mTmToggleButton:Landroid/widget/ToggleButton;

    .line 95
    const v0, 0x7f0b0213

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/lcm/LCM;->mSetButton:Landroid/widget/Button;

    .line 97
    iget-object v0, p0, Lcom/mediatek/engineermode/lcm/LCM;->mCycleText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/engineermode/lcm/LCM;->mMipiText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/engineermode/lcm/LCM;->mTmToggleButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/engineermode/lcm/LCM;->mSetButton:Landroid/widget/Button;

    if-nez v0, :cond_1

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/mediatek/engineermode/lcm/LCM;->TAG:Ljava/lang/String;

    const-string v1, "clocwork worked..."

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/mediatek/engineermode/lcm/LCM;->mTmToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v0, p0, Lcom/mediatek/engineermode/lcm/LCM;->mSetButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    new-instance v0, Lcom/mediatek/engineermode/lcm/LCM$1;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/lcm/LCM$1;-><init>(Lcom/mediatek/engineermode/lcm/LCM;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/lcm/LCM;->mHandler:Landroid/os/Handler;

    .line 134
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 201
    iget-object v1, p0, Lcom/mediatek/engineermode/lcm/LCM;->TAG:Ljava/lang/String;

    const-string v2, "-->onCreateDialog"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const/16 v1, 0x64

    if-ne p1, v1, :cond_1

    .line 203
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 204
    .local v0, dialog:Landroid/app/ProgressDialog;
    if-eqz v0, :cond_0

    .line 205
    const-string v1, "Progress"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 206
    const-string v1, "Please wait for device to initialize ..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 207
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 208
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 209
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 210
    iget-object v1, p0, Lcom/mediatek/engineermode/lcm/LCM;->TAG:Ljava/lang/String;

    const-string v2, "new ProgressDialog succeed"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    .end local v0           #dialog:Landroid/app/ProgressDialog;
    :goto_0
    return-object v0

    .line 212
    .restart local v0       #dialog:Landroid/app/ProgressDialog;
    :cond_0
    iget-object v1, p0, Lcom/mediatek/engineermode/lcm/LCM;->TAG:Ljava/lang/String;

    const-string v2, "new ProgressDialog failed"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 218
    .end local v0           #dialog:Landroid/app/ProgressDialog;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 141
    iget-object v0, p0, Lcom/mediatek/engineermode/lcm/LCM;->TAG:Ljava/lang/String;

    const-string v1, "-->onResume"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 144
    iget-object v0, p0, Lcom/mediatek/engineermode/lcm/LCM;->mTmToggleButton:Landroid/widget/ToggleButton;

    const-string v1, "ON"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v0, p0, Lcom/mediatek/engineermode/lcm/LCM;->mTmToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 146
    iget-boolean v0, p0, Lcom/mediatek/engineermode/lcm/LCM;->mbIsDataDetected:Z

    if-nez v0, :cond_0

    .line 147
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    .line 148
    new-instance v0, Lcom/mediatek/engineermode/lcm/LCM$2;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/lcm/LCM$2;-><init>(Lcom/mediatek/engineermode/lcm/LCM;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 185
    iput-boolean v2, p0, Lcom/mediatek/engineermode/lcm/LCM;->mbIsDialogShowed:Z

    .line 187
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/mediatek/engineermode/lcm/LCM;->TAG:Ljava/lang/String;

    const-string v1, "-->onStop"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 197
    return-void
.end method
