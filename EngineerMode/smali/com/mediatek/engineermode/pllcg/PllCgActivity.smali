.class public Lcom/mediatek/engineermode/pllcg/PllCgActivity;
.super Landroid/app/Activity;
.source "PllCgActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final CAT:Ljava/lang/String; = "cat "

.field private static final CMD_CGID_DISABLE:Ljava/lang/String; = "echo disable %1$s EM > /proc/clkmgr/clk_test"

.field private static final CMD_CGID_ENABLE:Ljava/lang/String; = "echo enable %1$s EM > /proc/clkmgr/clk_test"

.field private static final CMD_CLKMUX:Ljava/lang/String; = "echo clkmux %1$s %2$s EM > /proc/clkmgr/clk_test"

.field private static final FS_CLK_TEST:Ljava/lang/String; = "/proc/clkmgr/clk_test"

.field private static final FS_PLL_TEST:Ljava/lang/String; = "/proc/clkmgr/pll_test"

.field private static final TAG:Ljava/lang/String; = "PllCg"


# instance fields
.field private mBtnClkmux:Landroid/widget/Button;

.field private mBtnDisable:Landroid/widget/Button;

.field private mBtnEnable:Landroid/widget/Button;

.field private mBtnReadAll:Landroid/widget/Button;

.field private mEditCgId:Landroid/widget/EditText;

.field private mEditClkmuxId:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private controlCgId(Z)V
    .locals 6
    .parameter "enabled"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 144
    iget-object v3, p0, Lcom/mediatek/engineermode/pllcg/PllCgActivity;->mEditCgId:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 145
    const v3, 0x7f08057d

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 146
    .local v2, msg:Ljava/lang/String;
    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 156
    .end local v2           #msg:Ljava/lang/String;
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-object v3, p0, Lcom/mediatek/engineermode/pllcg/PllCgActivity;->mEditCgId:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, cgId:Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 151
    const-string v3, "echo enable %1$s EM > /proc/clkmgr/clk_test"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 155
    .local v1, cmd:Ljava/lang/String;
    :goto_1
    invoke-direct {p0, v1}, Lcom/mediatek/engineermode/pllcg/PllCgActivity;->execCommand(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 153
    .end local v1           #cmd:Ljava/lang/String;
    :cond_1
    const-string v3, "echo disable %1$s EM > /proc/clkmgr/clk_test"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #cmd:Ljava/lang/String;
    goto :goto_1
.end method

.method private execCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "cmd"

    .prologue
    .line 161
    const/4 v2, -0x1

    .line 162
    .local v2, ret:I
    const-string v3, "PllCg"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[cmd]:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :try_start_0
    invoke-static {p1}, Lcom/mediatek/engineermode/ShellExe;->execCommand(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 168
    :goto_0
    if-nez v2, :cond_0

    .line 169
    invoke-static {}, Lcom/mediatek/engineermode/ShellExe;->getOutput()Ljava/lang/String;

    move-result-object v1

    .line 170
    .local v1, outStr:Ljava/lang/String;
    const-string v3, "PllCg"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[output]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    .end local v1           #outStr:Ljava/lang/String;
    :goto_1
    return-object v1

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, e:Ljava/io/IOException;
    const-string v3, "PllCg"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 173
    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private setClkmux()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 127
    iget-object v4, p0, Lcom/mediatek/engineermode/pllcg/PllCgActivity;->mEditClkmuxId:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/mediatek/engineermode/pllcg/PllCgActivity;->mEditCgId:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 129
    :cond_0
    const v4, 0x7f08057d

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 130
    .local v3, msg:Ljava/lang/String;
    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 137
    .end local v3           #msg:Ljava/lang/String;
    :goto_0
    return-void

    .line 133
    :cond_1
    iget-object v4, p0, Lcom/mediatek/engineermode/pllcg/PllCgActivity;->mEditClkmuxId:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, clkmuxId:Ljava/lang/String;
    iget-object v4, p0, Lcom/mediatek/engineermode/pllcg/PllCgActivity;->mEditCgId:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, cgId:Ljava/lang/String;
    const-string v4, "echo clkmux %1$s %2$s EM > /proc/clkmgr/clk_test"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 136
    .local v2, cmd:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/mediatek/engineermode/pllcg/PllCgActivity;->execCommand(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

.method private showDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "title"
    .parameter "msg"

    .prologue
    .line 177
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 180
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 181
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .local v1, output:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 116
    :pswitch_0
    const-string v2, "PllCg"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown view id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :goto_0
    return-void

    .line 100
    :pswitch_1
    invoke-direct {p0}, Lcom/mediatek/engineermode/pllcg/PllCgActivity;->setClkmux()V

    goto :goto_0

    .line 103
    :pswitch_2
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/mediatek/engineermode/pllcg/PllCgActivity;->controlCgId(Z)V

    goto :goto_0

    .line 106
    :pswitch_3
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/mediatek/engineermode/pllcg/PllCgActivity;->controlCgId(Z)V

    goto :goto_0

    .line 109
    :pswitch_4
    const-string v0, "cat /proc/clkmgr/clk_test"

    .line 110
    .local v0, cmd:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/mediatek/engineermode/pllcg/PllCgActivity;->execCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    const-string v0, "cat /proc/clkmgr/pll_test"

    .line 112
    invoke-direct {p0, v0}, Lcom/mediatek/engineermode/pllcg/PllCgActivity;->execCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    const v2, 0x7f08057c

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/mediatek/engineermode/pllcg/PllCgActivity;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :pswitch_data_0
    .packed-switch 0x7f0b0388
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    const v0, 0x7f03006d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 78
    const v0, 0x7f0b0388

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/pllcg/PllCgActivity;->mBtnClkmux:Landroid/widget/Button;

    .line 79
    iget-object v0, p0, Lcom/mediatek/engineermode/pllcg/PllCgActivity;->mBtnClkmux:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    const v0, 0x7f0b038a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/pllcg/PllCgActivity;->mBtnEnable:Landroid/widget/Button;

    .line 81
    iget-object v0, p0, Lcom/mediatek/engineermode/pllcg/PllCgActivity;->mBtnEnable:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    const v0, 0x7f0b038b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/pllcg/PllCgActivity;->mBtnDisable:Landroid/widget/Button;

    .line 83
    iget-object v0, p0, Lcom/mediatek/engineermode/pllcg/PllCgActivity;->mBtnDisable:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    const v0, 0x7f0b038c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/pllcg/PllCgActivity;->mBtnReadAll:Landroid/widget/Button;

    .line 85
    iget-object v0, p0, Lcom/mediatek/engineermode/pllcg/PllCgActivity;->mBtnReadAll:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    const v0, 0x7f0b0387

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mediatek/engineermode/pllcg/PllCgActivity;->mEditClkmuxId:Landroid/widget/EditText;

    .line 87
    const v0, 0x7f0b0389

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mediatek/engineermode/pllcg/PllCgActivity;->mEditCgId:Landroid/widget/EditText;

    .line 88
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/clkmgr/clk_test"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    const-string v0, "Don\'t Support This Feature!"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 90
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 93
    :cond_0
    return-void
.end method
