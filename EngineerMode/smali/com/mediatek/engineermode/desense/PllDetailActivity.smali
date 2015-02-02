.class public Lcom/mediatek/engineermode/desense/PllDetailActivity;
.super Landroid/app/Activity;
.source "PllDetailActivity.java"


# static fields
.field private static final PATTERN:Ljava/lang/String; = "^[0-9a-fA-F]{1,16}$"

.field public static final PLL_DETAIL_ITEM_ID:Ljava/lang/String; = "id"

.field public static final PLL_DETAIL_ITEM_NAME:Ljava/lang/String; = "name"

.field public static final PLL_DETAIL_ITEM_VALUE:Ljava/lang/String; = "value"

.field private static final TAG:Ljava/lang/String; = "EM/DesensePllDetail"


# instance fields
.field private mBtnSet:Landroid/widget/Button;

.field private mEtValue:Landroid/widget/EditText;

.field private mId:I

.field private mName:Ljava/lang/String;

.field private mTvTitle:Landroid/widget/TextView;

.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/engineermode/desense/PllDetailActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/mediatek/engineermode/desense/PllDetailActivity;->mEtValue:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/engineermode/desense/PllDetailActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget v0, p0, Lcom/mediatek/engineermode/desense/PllDetailActivity;->mId:I

    return v0
.end method

.method static synthetic access$200(ILjava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    invoke-static {p0, p1}, Lcom/mediatek/engineermode/desense/PllDetailActivity;->pllSetClock(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static pllSetClock(ILjava/lang/String;)I
    .locals 6
    .parameter "id"
    .parameter "hexVal"

    .prologue
    .line 81
    const/4 v2, -0x1

    .line 82
    .local v2, result:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "echo enable "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " >/proc/clkmgr/pll_test"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, cmd:Ljava/lang/String;
    const-string v3, "EM/DesensePllDetail"

    invoke-static {v3, v0}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :try_start_0
    invoke-static {v0}, Lcom/mediatek/engineermode/ShellExe;->execCommand(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 86
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "echo "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " >/proc/clkmgr/pll_fsel"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-static {v0}, Lcom/mediatek/engineermode/ShellExe;->execCommand(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    .line 88
    const/4 v2, 0x0

    .line 94
    :cond_0
    :goto_0
    return v2

    .line 91
    :catch_0
    move-exception v1

    .line 92
    .local v1, e:Ljava/io/IOException;
    const-string v3, "EM/DesensePllDetail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pllSetClock IOException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v1, 0x7f03002d

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 38
    const v1, 0x7f0b0157

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mediatek/engineermode/desense/PllDetailActivity;->mBtnSet:Landroid/widget/Button;

    .line 39
    const v1, 0x7f0b0155

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mediatek/engineermode/desense/PllDetailActivity;->mTvTitle:Landroid/widget/TextView;

    .line 40
    const v1, 0x7f0b0156

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/mediatek/engineermode/desense/PllDetailActivity;->mEtValue:Landroid/widget/EditText;

    .line 41
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 42
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/engineermode/desense/PllDetailActivity;->mName:Ljava/lang/String;

    .line 43
    const-string v1, "id"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/engineermode/desense/PllDetailActivity;->mId:I

    .line 44
    const-string v1, "value"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/engineermode/desense/PllDetailActivity;->mValue:Ljava/lang/String;

    .line 45
    iget-object v1, p0, Lcom/mediatek/engineermode/desense/PllDetailActivity;->mTvTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/mediatek/engineermode/desense/PllDetailActivity;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object v1, p0, Lcom/mediatek/engineermode/desense/PllDetailActivity;->mEtValue:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/mediatek/engineermode/desense/PllDetailActivity;->mValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object v1, p0, Lcom/mediatek/engineermode/desense/PllDetailActivity;->mEtValue:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/mediatek/engineermode/desense/PllDetailActivity;->mValue:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 48
    iget-object v1, p0, Lcom/mediatek/engineermode/desense/PllDetailActivity;->mBtnSet:Landroid/widget/Button;

    new-instance v2, Lcom/mediatek/engineermode/desense/PllDetailActivity$1;

    invoke-direct {v2, p0}, Lcom/mediatek/engineermode/desense/PllDetailActivity$1;-><init>(Lcom/mediatek/engineermode/desense/PllDetailActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 75
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 76
    const-string v0, "Wrong set may cause system error!"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 78
    return-void
.end method
