.class public Lcom/android/simmelock/RemoveSetting;
.super Lcom/android/simmelock/SimLockBaseActivity;
.source "RemoveSetting.java"


# static fields
.field static DIALOG_REMOVELOCK:I = 0x0

.field private static final REMOVELOCK_ICC_SML_COMPLETE:I = 0x78


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x1

    sput v0, Lcom/android/simmelock/RemoveSetting;->DIALOG_REMOVELOCK:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/simmelock/SimLockBaseActivity;-><init>()V

    .line 108
    new-instance v0, Lcom/android/simmelock/RemoveSetting$3;

    invoke-direct {v0, p0}, Lcom/android/simmelock/RemoveSetting$3;-><init>(Lcom/android/simmelock/RemoveSetting;)V

    iput-object v0, p0, Lcom/android/simmelock/RemoveSetting;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/simmelock/RemoveSetting;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/simmelock/RemoveSetting;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/android/simmelock/SimLockBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 73
    sget v0, Lcom/android/simmelock/RemoveSetting;->DIALOG_REMOVELOCK:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    .line 74
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    .line 78
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f06000c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f06000d

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f060003

    new-instance v3, Lcom/android/simmelock/RemoveSetting$2;

    invoke-direct {v3, p0}, Lcom/android/simmelock/RemoveSetting$2;-><init>(Lcom/android/simmelock/RemoveSetting;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f060004

    new-instance v3, Lcom/android/simmelock/RemoveSetting$1;

    invoke-direct {v3, p0}, Lcom/android/simmelock/RemoveSetting$1;-><init>(Lcom/android/simmelock/RemoveSetting;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 105
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method
