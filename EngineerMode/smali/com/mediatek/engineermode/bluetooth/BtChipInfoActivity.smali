.class public Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;
.super Landroid/app/Activity;
.source "BtChipInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity$FunctionTask;
    }
.end annotation


# static fields
.field private static final CHECK_BT_STATE:I = 0x1

.field private static final GET_INFO:I = 0x2

.field private static final RESULT_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "EM/BT/ChipInfo"


# instance fields
.field private mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;

.field private mChipEco:Ljava/lang/String;

.field private mChipId:Ljava/lang/String;

.field private mChipIdTextView:Landroid/widget/TextView;

.field private mChipPatchId:Ljava/lang/String;

.field private mChipPatchLen:Ljava/lang/String;

.field private mEcoVerTextView:Landroid/widget/TextView;

.field private mPatchDateView:Landroid/widget/TextView;

.field private mPatchSizeView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 72
    iput-object v1, p0, Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 75
    iput-object v1, p0, Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;->mChipId:Ljava/lang/String;

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;->mChipEco:Ljava/lang/String;

    .line 80
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;->mChipPatchId:Ljava/lang/String;

    .line 81
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;->mChipPatchLen:Ljava/lang/String;

    .line 83
    iput-object v1, p0, Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;->mChipIdTextView:Landroid/widget/TextView;

    .line 84
    iput-object v1, p0, Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;->mEcoVerTextView:Landroid/widget/TextView;

    .line 85
    iput-object v1, p0, Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;->mPatchSizeView:Landroid/widget/TextView;

    .line 86
    iput-object v1, p0, Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;->mPatchDateView:Landroid/widget/TextView;

    .line 142
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;)Lcom/mediatek/engineermode/bluetooth/BtTest;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;

    return-object v0
.end method

.method static synthetic access$002(Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;Lcom/mediatek/engineermode/bluetooth/BtTest;)Lcom/mediatek/engineermode/bluetooth/BtTest;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;

    return-object p1
.end method

.method static synthetic access$100(Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;->mChipId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;->mChipId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;->mChipEco:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;->mChipEco:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;->mChipPatchId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;->mChipPatchId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;->mChipPatchLen:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;->mChipPatchLen:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;->mChipIdTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;->mEcoVerTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;->mPatchSizeView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;->mPatchDateView:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "onSavedInstanceState"

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    const v1, 0x7f030016

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 95
    const v1, 0x7f0b00b2

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;->mChipIdTextView:Landroid/widget/TextView;

    .line 96
    const v1, 0x7f0b00b5

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;->mEcoVerTextView:Landroid/widget/TextView;

    .line 97
    const v1, 0x7f0b00b8

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;->mPatchSizeView:Landroid/widget/TextView;

    .line 98
    const v1, 0x7f0b00bb

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;->mPatchDateView:Landroid/widget/TextView;

    .line 100
    iget-object v1, p0, Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_0

    .line 101
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 105
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 106
    new-instance v0, Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity$FunctionTask;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity$FunctionTask;-><init>(Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;)V

    .line 107
    .local v0, functionTask:Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity$FunctionTask;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 112
    .end local v0           #functionTask:Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity$FunctionTask;
    :goto_0
    return-void

    .line 109
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 116
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 117
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 118
    .local v0, dialog:Landroid/app/ProgressDialog;
    const v1, 0x7f080299

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 119
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 120
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 122
    const-string v1, "EM/BT/ChipInfo"

    const-string v2, "new ProgressDialog succeed"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .end local v0           #dialog:Landroid/app/ProgressDialog;
    :goto_0
    return-object v0

    .line 124
    :cond_0
    if-ne p1, v3, :cond_1

    .line 125
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080295

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080297

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080294

    new-instance v3, Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity$1;

    invoke-direct {v3, p0}, Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity$1;-><init>(Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 136
    .local v0, dialog:Landroid/app/AlertDialog;
    goto :goto_0

    .line 139
    .end local v0           #dialog:Landroid/app/AlertDialog;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
