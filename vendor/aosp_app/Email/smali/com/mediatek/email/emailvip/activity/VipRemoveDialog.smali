.class public Lcom/mediatek/email/emailvip/activity/VipRemoveDialog;
.super Landroid/app/DialogFragment;
.source "VipRemoveDialog.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "VipRemoveDialog"

.field private static sRemoveTask:Lcom/android/emailcommon/utility/EmailAsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/emailcommon/utility/EmailAsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static sVipAddress:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/android/emailcommon/utility/EmailAsyncTask;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/mediatek/email/emailvip/activity/VipRemoveDialog;->sRemoveTask:Lcom/android/emailcommon/utility/EmailAsyncTask;

    return-object v0
.end method

.method public static newInstance(Lcom/android/emailcommon/utility/EmailAsyncTask;Ljava/lang/String;)Lcom/mediatek/email/emailvip/activity/VipRemoveDialog;
    .locals 1
    .parameter
    .parameter "address"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/emailcommon/utility/EmailAsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/mediatek/email/emailvip/activity/VipRemoveDialog;"
        }
    .end annotation

    .prologue
    .line 24
    .local p0, removeTask:Lcom/android/emailcommon/utility/EmailAsyncTask;,"Lcom/android/emailcommon/utility/EmailAsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    new-instance v0, Lcom/mediatek/email/emailvip/activity/VipRemoveDialog;

    invoke-direct {v0}, Lcom/mediatek/email/emailvip/activity/VipRemoveDialog;-><init>()V

    .line 25
    .local v0, frag:Lcom/mediatek/email/emailvip/activity/VipRemoveDialog;
    sput-object p0, Lcom/mediatek/email/emailvip/activity/VipRemoveDialog;->sRemoveTask:Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 26
    sput-object p1, Lcom/mediatek/email/emailvip/activity/VipRemoveDialog;->sVipAddress:Ljava/lang/String;

    .line 27
    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 32
    const v1, 0x7f08003f

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/mediatek/email/emailvip/activity/VipRemoveDialog;->sVipAddress:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, message:Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f08003d

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/mediatek/email/emailvip/activity/VipRemoveDialog$1;

    invoke-direct {v3, p0}, Lcom/mediatek/email/emailvip/activity/VipRemoveDialog$1;-><init>(Lcom/mediatek/email/emailvip/activity/VipRemoveDialog;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080079

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method
