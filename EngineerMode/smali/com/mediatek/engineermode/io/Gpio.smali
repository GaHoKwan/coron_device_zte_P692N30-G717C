.class public Lcom/mediatek/engineermode/io/Gpio;
.super Landroid/app/Activity;
.source "Gpio.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "EM/IO/GPIO"


# instance fields
.field private mBtnDataHigh:Landroid/widget/Button;

.field private mBtnDataLow:Landroid/widget/Button;

.field private mBtnDirIn:Landroid/widget/Button;

.field private mBtnDirOut:Landroid/widget/Button;

.field private mEdit:Landroid/widget/EditText;

.field private mMaxGpioNum:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "arg0"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 118
    iget-object v4, p0, Lcom/mediatek/engineermode/io/Gpio;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, editString:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x4

    if-le v4, v5, :cond_1

    .line 121
    :cond_0
    const-string v4, "Please input the value."

    invoke-static {p0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 167
    :goto_0
    return-void

    .line 125
    :cond_1
    iget-object v4, p0, Lcom/mediatek/engineermode/io/Gpio;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 126
    .local v1, inputValue:I
    invoke-static {}, Lcom/mediatek/engineermode/io/EmGpio;->getGpioMaxNumber()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-gt v1, v4, :cond_2

    if-gez v1, :cond_3

    .line 127
    :cond_2
    const-string v4, "ERR: Value is too small or too big."

    invoke-static {p0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 131
    :cond_3
    const/4 v3, 0x0

    .line 132
    .local v3, setFlag:Z
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    iget-object v5, p0, Lcom/mediatek/engineermode/io/Gpio;->mBtnDirIn:Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    if-ne v4, v5, :cond_5

    .line 134
    invoke-static {v1}, Lcom/mediatek/engineermode/io/EmGpio;->setGpioInput(I)Z

    move-result v2

    .line 135
    .local v2, ret:Z
    if-eqz v2, :cond_4

    .line 139
    const/4 v3, 0x1

    .line 159
    .end local v2           #ret:Z
    :cond_4
    :goto_1
    if-eqz v3, :cond_8

    .line 160
    const-string v4, "Set success."

    invoke-static {p0, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 142
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    iget-object v5, p0, Lcom/mediatek/engineermode/io/Gpio;->mBtnDirOut:Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    if-ne v4, v5, :cond_6

    .line 143
    invoke-static {v1}, Lcom/mediatek/engineermode/io/EmGpio;->setGpioOutput(I)Z

    move-result v2

    .line 144
    .restart local v2       #ret:Z
    if-eqz v2, :cond_4

    .line 145
    const/4 v3, 0x1

    goto :goto_1

    .line 147
    .end local v2           #ret:Z
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    iget-object v5, p0, Lcom/mediatek/engineermode/io/Gpio;->mBtnDataHigh:Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    if-ne v4, v5, :cond_7

    .line 148
    invoke-static {v1}, Lcom/mediatek/engineermode/io/EmGpio;->setGpioDataHigh(I)Z

    move-result v2

    .line 149
    .restart local v2       #ret:Z
    if-eqz v2, :cond_4

    .line 150
    const/4 v3, 0x1

    goto :goto_1

    .line 153
    .end local v2           #ret:Z
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    iget-object v5, p0, Lcom/mediatek/engineermode/io/Gpio;->mBtnDataLow:Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    if-ne v4, v5, :cond_4

    .line 154
    invoke-static {v1}, Lcom/mediatek/engineermode/io/EmGpio;->setGpioDataLow(I)Z

    move-result v2

    .line 155
    .restart local v2       #ret:Z
    if-eqz v2, :cond_4

    .line 156
    const/4 v3, 0x1

    goto :goto_1

    .line 163
    .end local v2           #ret:Z
    :cond_8
    const-string v4, "Set fail."

    invoke-static {p0, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    const v0, 0x7f03003c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 71
    const v0, 0x7f0b018d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/io/Gpio;->mBtnDirIn:Landroid/widget/Button;

    .line 72
    const v0, 0x7f0b018e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/io/Gpio;->mBtnDirOut:Landroid/widget/Button;

    .line 73
    const v0, 0x7f0b0190

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/io/Gpio;->mBtnDataHigh:Landroid/widget/Button;

    .line 74
    const v0, 0x7f0b0191

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/io/Gpio;->mBtnDataLow:Landroid/widget/Button;

    .line 76
    const v0, 0x7f0b018a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mediatek/engineermode/io/Gpio;->mEdit:Landroid/widget/EditText;

    .line 77
    const v0, 0x7f0b018b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/engineermode/io/Gpio;->mMaxGpioNum:Landroid/widget/TextView;

    .line 79
    iget-object v0, p0, Lcom/mediatek/engineermode/io/Gpio;->mBtnDirIn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v0, p0, Lcom/mediatek/engineermode/io/Gpio;->mBtnDirOut:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v0, p0, Lcom/mediatek/engineermode/io/Gpio;->mBtnDataHigh:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v0, p0, Lcom/mediatek/engineermode/io/Gpio;->mBtnDataLow:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 89
    const-string v0, "EM/IO/GPIO"

    const-string v1, "-->onPause"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-static {}, Lcom/mediatek/engineermode/io/EmGpio;->gpioUnInit()Z

    .line 91
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 92
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 96
    const-string v2, "EM/IO/GPIO"

    const-string v3, "-->onResume"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 98
    invoke-static {}, Lcom/mediatek/engineermode/io/EmGpio;->gpioInit()Z

    move-result v1

    .line 99
    .local v1, ret:Z
    if-nez v1, :cond_0

    .line 100
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 101
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const-string v2, "Error"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 102
    const-string v2, "Driver Init error!"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 103
    const-string v2, "OK"

    new-instance v3, Lcom/mediatek/engineermode/io/Gpio$1;

    invoke-direct {v3, p0}, Lcom/mediatek/engineermode/io/Gpio$1;-><init>(Lcom/mediatek/engineermode/io/Gpio;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 109
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 115
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v2, p0, Lcom/mediatek/engineermode/io/Gpio;->mMaxGpioNum:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Max Num:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/mediatek/engineermode/io/EmGpio;->getGpioMaxNumber()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
