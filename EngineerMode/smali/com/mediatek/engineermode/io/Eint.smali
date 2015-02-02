.class public Lcom/mediatek/engineermode/io/Eint;
.super Landroid/app/Activity;
.source "Eint.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final ROOT_DIR:Ljava/lang/String; = "/sys/bus/platform/drivers/eint/"

.field private static final TAG:Ljava/lang/String; = "EM/IO/EINT"


# instance fields
.field private mBtnQuery:Landroid/widget/Button;

.field private mDispPolarity:Landroid/widget/TextView;

.field private mDispSensitivity:Landroid/widget/TextView;

.field private mEdit:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private showDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "title"
    .parameter "info"

    .prologue
    .line 80
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 81
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 82
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 83
    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 84
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 85
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "arg0"

    .prologue
    .line 88
    const-string v4, "EM/IO/EINT"

    const-string v5, "-->onClick"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    iget-object v5, p0, Lcom/mediatek/engineermode/io/Eint;->mBtnQuery:Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 91
    iget-object v4, p0, Lcom/mediatek/engineermode/io/Eint;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 92
    .local v2, editString:Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x4

    if-le v4, v5, :cond_2

    .line 94
    :cond_0
    const-string v4, "Please input the NO.."

    const/4 v5, 0x1

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 154
    .end local v2           #editString:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 98
    .restart local v2       #editString:Ljava/lang/String;
    :cond_2
    const/4 v4, 0x3

    new-array v0, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "/system/bin/sh"

    aput-object v5, v0, v4

    const/4 v4, 0x1

    const-string v5, "-c"

    aput-object v5, v0, v4

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "echo "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " > "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/sys/bus/platform/drivers/eint/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "current_eint"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    .line 100
    .local v0, cmd:[Ljava/lang/String;
    invoke-static {v0}, Lcom/mediatek/engineermode/ShellExe;->execCommand([Ljava/lang/String;)I

    move-result v3

    .line 101
    .local v3, ret:I
    if-eqz v3, :cond_3

    .line 102
    iget-object v4, p0, Lcom/mediatek/engineermode/io/Eint;->mDispSensitivity:Landroid/widget/TextView;

    const-string v5, "Set EINT NO. Error."

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v4, p0, Lcom/mediatek/engineermode/io/Eint;->mDispPolarity:Landroid/widget/TextView;

    const-string v5, "Set EINT NO. Error."

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 150
    .end local v0           #cmd:[Ljava/lang/String;
    .end local v2           #editString:Ljava/lang/String;
    .end local v3           #ret:I
    :catch_0
    move-exception v1

    .line 151
    .local v1, e:Ljava/io/IOException;
    const-string v4, "EM/IO/EINT"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const-string v4, "Shell Exception!"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/mediatek/engineermode/io/Eint;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 107
    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #cmd:[Ljava/lang/String;
    .restart local v2       #editString:Ljava/lang/String;
    .restart local v3       #ret:I
    :cond_3
    const/4 v4, 0x2

    :try_start_1
    const-string v5, "cat  /sys/bus/platform/drivers/eint/current_eint"

    aput-object v5, v0, v4

    .line 108
    invoke-static {v0}, Lcom/mediatek/engineermode/ShellExe;->execCommand([Ljava/lang/String;)I

    move-result v3

    .line 109
    if-eqz v3, :cond_4

    .line 110
    iget-object v4, p0, Lcom/mediatek/engineermode/io/Eint;->mDispSensitivity:Landroid/widget/TextView;

    const-string v5, "Query Error."

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v4, p0, Lcom/mediatek/engineermode/io/Eint;->mDispPolarity:Landroid/widget/TextView;

    const-string v5, "Query Error."

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 115
    :cond_4
    invoke-static {}, Lcom/mediatek/engineermode/ShellExe;->getOutput()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 116
    iget-object v4, p0, Lcom/mediatek/engineermode/io/Eint;->mDispSensitivity:Landroid/widget/TextView;

    const-string v5, "No Such EINT NO.."

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v4, p0, Lcom/mediatek/engineermode/io/Eint;->mDispPolarity:Landroid/widget/TextView;

    const-string v5, "No Such EINT NO.."

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 121
    :cond_5
    const/4 v4, 0x2

    const-string v5, "cat /sys/bus/platform/drivers/eint/current_eint_sens"

    aput-object v5, v0, v4

    .line 122
    invoke-static {v0}, Lcom/mediatek/engineermode/ShellExe;->execCommand([Ljava/lang/String;)I

    move-result v3

    .line 123
    if-eqz v3, :cond_6

    .line 124
    iget-object v4, p0, Lcom/mediatek/engineermode/io/Eint;->mDispSensitivity:Landroid/widget/TextView;

    const-string v5, "Get Sensitivity Error."

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    :goto_1
    const/4 v4, 0x2

    const-string v5, "cat /sys/bus/platform/drivers/eint/current_eint_pol"

    aput-object v5, v0, v4

    .line 135
    invoke-static {v0}, Lcom/mediatek/engineermode/ShellExe;->execCommand([Ljava/lang/String;)I

    move-result v3

    .line 136
    if-eqz v3, :cond_8

    .line 137
    iget-object v4, p0, Lcom/mediatek/engineermode/io/Eint;->mDispPolarity:Landroid/widget/TextView;

    const-string v5, "Get Polarity Error."

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 126
    :cond_6
    invoke-static {}, Lcom/mediatek/engineermode/ShellExe;->getOutput()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 127
    iget-object v4, p0, Lcom/mediatek/engineermode/io/Eint;->mDispSensitivity:Landroid/widget/TextView;

    const-string v5, "edge"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 129
    :cond_7
    iget-object v4, p0, Lcom/mediatek/engineermode/io/Eint;->mDispSensitivity:Landroid/widget/TextView;

    const-string v5, "level"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 140
    :cond_8
    invoke-static {}, Lcom/mediatek/engineermode/ShellExe;->getOutput()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 141
    iget-object v4, p0, Lcom/mediatek/engineermode/io/Eint;->mDispPolarity:Landroid/widget/TextView;

    const-string v5, "active-low"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 143
    :cond_9
    iget-object v4, p0, Lcom/mediatek/engineermode/io/Eint;->mDispPolarity:Landroid/widget/TextView;

    const-string v5, "active-high"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const v0, 0x7f030036

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 68
    const v0, 0x7f0b0171

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/engineermode/io/Eint;->mDispSensitivity:Landroid/widget/TextView;

    .line 69
    const v0, 0x7f0b0173

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/engineermode/io/Eint;->mDispPolarity:Landroid/widget/TextView;

    .line 71
    const v0, 0x7f0b016f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/io/Eint;->mBtnQuery:Landroid/widget/Button;

    .line 72
    const v0, 0x7f0b016e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mediatek/engineermode/io/Eint;->mEdit:Landroid/widget/EditText;

    .line 74
    iget-object v0, p0, Lcom/mediatek/engineermode/io/Eint;->mBtnQuery:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    return-void
.end method
