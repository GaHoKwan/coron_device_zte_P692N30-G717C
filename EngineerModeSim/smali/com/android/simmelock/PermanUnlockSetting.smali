.class public Lcom/android/simmelock/PermanUnlockSetting;
.super Lcom/android/simmelock/SimLockBaseActivity;
.source "PermanUnlockSetting.java"


# static fields
.field static DIALOG_PERMANUNLOCK:I = 0x0

.field private static final PERREMOVELOCK_ICC_SML_CANCEL:I = 0x309

.field private static final PERREMOVELOCK_ICC_SML_COMPLETE:I = 0x78

.field private static final PERREMOVELOCK_ICC_SML_SHOW_DIALOG:I = 0x29a


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mHandlerFinish:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x2

    sput v0, Lcom/android/simmelock/PermanUnlockSetting;->DIALOG_PERMANUNLOCK:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/simmelock/SimLockBaseActivity;-><init>()V

    .line 70
    new-instance v0, Lcom/android/simmelock/PermanUnlockSetting$1;

    invoke-direct {v0, p0}, Lcom/android/simmelock/PermanUnlockSetting$1;-><init>(Lcom/android/simmelock/PermanUnlockSetting;)V

    iput-object v0, p0, Lcom/android/simmelock/PermanUnlockSetting;->mHandlerFinish:Landroid/os/Handler;

    .line 125
    new-instance v0, Lcom/android/simmelock/PermanUnlockSetting$4;

    invoke-direct {v0, p0}, Lcom/android/simmelock/PermanUnlockSetting$4;-><init>(Lcom/android/simmelock/PermanUnlockSetting;)V

    iput-object v0, p0, Lcom/android/simmelock/PermanUnlockSetting;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/simmelock/PermanUnlockSetting;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/simmelock/PermanUnlockSetting;->mHandlerFinish:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/simmelock/PermanUnlockSetting;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/simmelock/PermanUnlockSetting;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/android/simmelock/SimLockBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 87
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    .line 97
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

    const v2, 0x7f06000e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f060003

    new-instance v3, Lcom/android/simmelock/PermanUnlockSetting$3;

    invoke-direct {v3, p0}, Lcom/android/simmelock/PermanUnlockSetting$3;-><init>(Lcom/android/simmelock/PermanUnlockSetting;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f060004

    new-instance v3, Lcom/android/simmelock/PermanUnlockSetting$2;

    invoke-direct {v3, p0}, Lcom/android/simmelock/PermanUnlockSetting$2;-><init>(Lcom/android/simmelock/PermanUnlockSetting;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 122
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 91
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 92
    iget-object v0, p0, Lcom/android/simmelock/PermanUnlockSetting;->mHandlerFinish:Landroid/os/Handler;

    const/16 v1, 0x29a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 93
    return-void
.end method
