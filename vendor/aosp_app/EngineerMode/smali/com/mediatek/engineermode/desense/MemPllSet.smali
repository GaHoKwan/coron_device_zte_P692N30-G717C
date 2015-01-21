.class public Lcom/mediatek/engineermode/desense/MemPllSet;
.super Landroid/app/Activity;
.source "MemPllSet.java"


# static fields
.field private static final CURRENT_PRE:Ljava/lang/String; = "Current DRAMC is "

.field private static final FAIL:Ljava/lang/String; = " fail"

.field private static final FILE_DRAMC:Ljava/lang/String; = "/proc/freqhopping/dramc"

.field private static final SUCCESS:Ljava/lang/String; = " success"

.field private static final TAG:Ljava/lang/String; = "EM/MemPllSet"

.field private static final VALUE:I = 0x10a

.field private static final VALUE_200:Ljava/lang/String; = "200"

.field private static final VALUE_266:Ljava/lang/String; = "266"

.field private static final VALUE_333:Ljava/lang/String; = "333"


# instance fields
.field private mBtn200to266:Landroid/widget/Button;

.field private mBtn266to200:Landroid/widget/Button;

.field private final mClickListener:Landroid/view/View$OnClickListener;

.field private mTvCurrent:Landroid/widget/TextView;

.field private text_0:Ljava/lang/String;

.field private text_1:Ljava/lang/String;

.field private value_0:I

.field private value_1:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 33
    iput v0, p0, Lcom/mediatek/engineermode/desense/MemPllSet;->value_0:I

    .line 34
    iput v0, p0, Lcom/mediatek/engineermode/desense/MemPllSet;->value_1:I

    .line 38
    new-instance v0, Lcom/mediatek/engineermode/desense/MemPllSet$1;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/desense/MemPllSet$1;-><init>(Lcom/mediatek/engineermode/desense/MemPllSet;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/desense/MemPllSet;->mClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/engineermode/desense/MemPllSet;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/mediatek/engineermode/desense/MemPllSet;->mBtn200to266:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/engineermode/desense/MemPllSet;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/desense/MemPllSet;->doConvert(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/engineermode/desense/MemPllSet;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/mediatek/engineermode/desense/MemPllSet;->mBtn266to200:Landroid/widget/Button;

    return-object v0
.end method

.method private doConvert(Z)V
    .locals 4
    .parameter "bValue200"

    .prologue
    .line 97
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/mediatek/engineermode/desense/MemPllSet;->text_0:Ljava/lang/String;

    :goto_0
    invoke-direct {p0, v1}, Lcom/mediatek/engineermode/desense/MemPllSet;->setCurrentDramc(Ljava/lang/String;)Z

    move-result v0

    .line 98
    .local v0, result:Z
    if-eqz v0, :cond_0

    .line 99
    iget-object v2, p0, Lcom/mediatek/engineermode/desense/MemPllSet;->mTvCurrent:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current DRAMC is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/mediatek/engineermode/desense/MemPllSet;->text_0:Ljava/lang/String;

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/desense/MemPllSet;->updateBtnStatus(Z)V

    .line 103
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f080368

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_3

    const-string v1, " success"

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 107
    return-void

    .line 97
    .end local v0           #result:Z
    :cond_1
    iget-object v1, p0, Lcom/mediatek/engineermode/desense/MemPllSet;->text_1:Ljava/lang/String;

    goto :goto_0

    .line 99
    .restart local v0       #result:Z
    :cond_2
    iget-object v1, p0, Lcom/mediatek/engineermode/desense/MemPllSet;->text_1:Ljava/lang/String;

    goto :goto_1

    .line 103
    :cond_3
    const-string v1, " fail"

    goto :goto_2
.end method

.method private getCurrentDramc()I
    .locals 8

    .prologue
    .line 115
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .local v3, strBuilder:Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 117
    .local v4, value:I
    const-string v5, "cat "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    const-string v5, "/proc/freqhopping/dramc"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    const-string v5, "EM/MemPllSet"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get current dramc cmd: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/engineermode/ShellExe;->execCommand(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    .line 123
    invoke-static {}, Lcom/mediatek/engineermode/ShellExe;->getOutput()Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, result:Ljava/lang/String;
    new-instance v2, Ljava/util/Scanner;

    invoke-direct {v2, v1}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    .line 125
    .local v2, scan:Ljava/util/Scanner;
    const-string v5, "\\d+"

    invoke-virtual {v2, v5}, Ljava/util/Scanner;->findInLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 126
    invoke-virtual {v2}, Ljava/util/Scanner;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .end local v1           #result:Ljava/lang/String;
    .end local v2           #scan:Ljava/util/Scanner;
    :cond_0
    :goto_0
    return v4

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, e:Ljava/io/IOException;
    const-string v5, "EM/MemPllSet"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get current dramc IOException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setCurrentDramc(Ljava/lang/String;)Z
    .locals 6
    .parameter "value"

    .prologue
    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .local v2, strBuilder:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 137
    .local v1, result:Z
    const-string v3, "echo "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    const-string v3, " > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    const-string v3, "/proc/freqhopping/dramc"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    const-string v3, "EM/MemPllSet"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set current dramc cmd: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/engineermode/ShellExe;->execCommand(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    .line 145
    const/4 v1, 0x1

    .line 150
    :cond_0
    :goto_0
    return v1

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, e:Ljava/io/IOException;
    const-string v3, "EM/MemPllSet"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set current dramc IOException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateBtnStatus(Z)V
    .locals 2
    .parameter "bValue200"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/mediatek/engineermode/desense/MemPllSet;->mBtn200to266:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 111
    iget-object v1, p0, Lcom/mediatek/engineermode/desense/MemPllSet;->mBtn266to200:Landroid/widget/Button;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 112
    return-void

    .line 111
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/16 v2, 0x10a

    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/freqhopping/dramc"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/freqhopping/dramc"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 53
    :cond_0
    const v0, 0x7f080366

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 55
    const-string v0, "EM/MemPllSet"

    const-string v1, "MemPllSet files not exist"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 78
    :goto_0
    return-void

    .line 59
    :cond_1
    const v0, 0x7f03002c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 60
    const v0, 0x7f0b0152

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/engineermode/desense/MemPllSet;->mTvCurrent:Landroid/widget/TextView;

    .line 61
    const v0, 0x7f0b0153

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/desense/MemPllSet;->mBtn200to266:Landroid/widget/Button;

    .line 62
    iget-object v0, p0, Lcom/mediatek/engineermode/desense/MemPllSet;->mBtn200to266:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mediatek/engineermode/desense/MemPllSet;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    const v0, 0x7f0b0154

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/desense/MemPllSet;->mBtn266to200:Landroid/widget/Button;

    .line 64
    iget-object v0, p0, Lcom/mediatek/engineermode/desense/MemPllSet;->mBtn266to200:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mediatek/engineermode/desense/MemPllSet;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    const/16 v0, 0x28

    invoke-static {}, Lcom/mediatek/engineermode/ChipSupport;->getChip()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 66
    iput v2, p0, Lcom/mediatek/engineermode/desense/MemPllSet;->value_0:I

    .line 67
    const/16 v0, 0x14d

    iput v0, p0, Lcom/mediatek/engineermode/desense/MemPllSet;->value_1:I

    .line 68
    const-string v0, "266"

    iput-object v0, p0, Lcom/mediatek/engineermode/desense/MemPllSet;->text_0:Ljava/lang/String;

    .line 69
    const-string v0, "333"

    iput-object v0, p0, Lcom/mediatek/engineermode/desense/MemPllSet;->text_1:Ljava/lang/String;

    .line 70
    iget-object v0, p0, Lcom/mediatek/engineermode/desense/MemPllSet;->mBtn200to266:Landroid/widget/Button;

    const v1, 0x7f08035f

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v0, p0, Lcom/mediatek/engineermode/desense/MemPllSet;->mBtn266to200:Landroid/widget/Button;

    const v1, 0x7f080360

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 73
    :cond_2
    const/16 v0, 0xc8

    iput v0, p0, Lcom/mediatek/engineermode/desense/MemPllSet;->value_0:I

    .line 74
    iput v2, p0, Lcom/mediatek/engineermode/desense/MemPllSet;->value_1:I

    .line 75
    const-string v0, "200"

    iput-object v0, p0, Lcom/mediatek/engineermode/desense/MemPllSet;->text_0:Ljava/lang/String;

    .line 76
    const-string v0, "266"

    iput-object v0, p0, Lcom/mediatek/engineermode/desense/MemPllSet;->text_1:Ljava/lang/String;

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 82
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 83
    invoke-direct {p0}, Lcom/mediatek/engineermode/desense/MemPllSet;->getCurrentDramc()I

    move-result v0

    .line 84
    .local v0, current:I
    const-string v1, "EM/MemPllSet"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    if-nez v0, :cond_0

    .line 86
    const v1, 0x7f080367

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 88
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 94
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v2, p0, Lcom/mediatek/engineermode/desense/MemPllSet;->mTvCurrent:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current DRAMC is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v1, p0, Lcom/mediatek/engineermode/desense/MemPllSet;->value_1:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/mediatek/engineermode/desense/MemPllSet;->text_0:Ljava/lang/String;

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v1, p0, Lcom/mediatek/engineermode/desense/MemPllSet;->mTvCurrent:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/engineermode/desense/MemPllSet;->text_0:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/mediatek/engineermode/desense/MemPllSet;->updateBtnStatus(Z)V

    goto :goto_0

    .line 91
    :cond_1
    iget-object v1, p0, Lcom/mediatek/engineermode/desense/MemPllSet;->text_1:Ljava/lang/String;

    goto :goto_1
.end method
