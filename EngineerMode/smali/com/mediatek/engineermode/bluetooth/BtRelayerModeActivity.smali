.class public Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;
.super Landroid/app/Activity;
.source "BtRelayerModeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity$FunctionTask;
    }
.end annotation


# static fields
.field private static final END_TEST:I = 0x2

.field private static final EXIT_SUCCESS:I = 0xa

.field private static final PARA_INDEX:I = 0x0

.field private static final RENTURN_SUCCESS:I = 0x0

.field private static final START_TEST:I = 0x1

.field private static final TAG:Ljava/lang/String; = "EM/BT/RelayerMode"


# instance fields
.field private mBauSpinner:Landroid/widget/Spinner;

.field private mBaudrate:I

.field private mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;

.field private mPortNumber:I

.field private mStartBtn:Landroid/widget/Button;

.field private mStartFlag:Z

.field private mUartSpinner:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;->mStartFlag:Z

    .line 84
    const/16 v0, 0x2580

    iput v0, p0, Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;->mBaudrate:I

    .line 85
    const/4 v0, 0x3

    iput v0, p0, Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;->mPortNumber:I

    .line 196
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;)Landroid/widget/Spinner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;->mBauSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;)Lcom/mediatek/engineermode/bluetooth/BtTest;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;

    return-object v0
.end method

.method static synthetic access$102(Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;Lcom/mediatek/engineermode/bluetooth/BtTest;)Lcom/mediatek/engineermode/bluetooth/BtTest;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;

    return-object p1
.end method

.method static synthetic access$200(Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;->mPortNumber:I

    return v0
.end method

.method static synthetic access$300(Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;->mBaudrate:I

    return v0
.end method

.method static synthetic access$402(Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;->mStartFlag:Z

    return p1
.end method

.method static synthetic access$500(Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;->mStartBtn:Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 135
    const-string v3, "EM/BT/RelayerMode"

    const-string v4, "-->onClick"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const-string v3, "EM/BT/RelayerMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mStartFlag--"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;->mStartFlag:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    iget-object v4, p0, Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;->mStartBtn:Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 139
    const-string v3, "EM/BT/RelayerMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mBtRelayerModeSpinner.getSelectedItem()--"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;->mBauSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;->mBauSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;->mBaudrate:I

    .line 144
    const-string v3, "EM/BT/RelayerMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mBaudrate--"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;->mBaudrate:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :goto_0
    iget-object v3, p0, Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;->mUartSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/AdapterView;->getSelectedItemId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 156
    .local v2, tmpLong:Ljava/lang/Long;
    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v3

    iput v3, p0, Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;->mPortNumber:I

    .line 157
    const-string v3, "EM/BT/RelayerMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mPortNumber--"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;->mPortNumber:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    new-instance v1, Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity$FunctionTask;

    invoke-direct {v1, p0}, Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity$FunctionTask;-><init>(Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;)V

    .line 161
    .local v1, functionTask:Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity$FunctionTask;
    iget-object v3, p0, Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;->mStartBtn:Landroid/widget/Button;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 162
    iget-boolean v3, p0, Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;->mStartFlag:Z

    if-eqz v3, :cond_1

    .line 164
    new-array v3, v6, [Ljava/lang/Integer;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v1, v3}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 165
    iget-object v3, p0, Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;->mStartBtn:Landroid/widget/Button;

    const-string v4, "Start"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    .end local v1           #functionTask:Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity$FunctionTask;
    .end local v2           #tmpLong:Ljava/lang/Long;
    :cond_0
    :goto_1
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v3, "EM/BT/RelayerMode"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 168
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .restart local v1       #functionTask:Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity$FunctionTask;
    .restart local v2       #tmpLong:Ljava/lang/Long;
    :cond_1
    invoke-virtual {p0, v6}, Landroid/app/Activity;->showDialog(I)V

    .line 169
    new-array v3, v6, [Ljava/lang/Integer;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v1, v3}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 93
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 94
    const v0, 0x7f030019

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 96
    const v0, 0x7f0b00c1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;->mBauSpinner:Landroid/widget/Spinner;

    .line 97
    const v0, 0x7f0b00c4

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;->mUartSpinner:Landroid/widget/Spinner;

    .line 98
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;->mUartSpinner:Landroid/widget/Spinner;

    new-instance v1, Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity$1;

    invoke-direct {v1, p0}, Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity$1;-><init>(Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 112
    const v0, 0x7f0b00c5

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;->mStartBtn:Landroid/widget/Button;

    .line 130
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;->mStartBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    const/4 v3, 0x1

    .line 177
    const-string v1, "EM/BT/RelayerMode"

    const-string v2, "-->onCreateDialog"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    if-ne p1, v3, :cond_0

    .line 179
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 181
    .local v0, dialog:Landroid/app/ProgressDialog;
    const v1, 0x7f08029a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 182
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 183
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 187
    .end local v0           #dialog:Landroid/app/ProgressDialog;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
