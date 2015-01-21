.class public Lcom/zte/heartyservice/privacy/ResetDisguisePasswordDialog;
.super Landroid/app/Activity;
.source "ResetDisguisePasswordDialog.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/privacy/ResetDisguisePasswordDialog;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ResetDisguisePasswordDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    .line 19
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    iput-object p0, p0, Lcom/zte/heartyservice/privacy/ResetDisguisePasswordDialog;->mContext:Landroid/content/Context;

    .line 22
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPasswordType()I

    move-result v1

    .line 23
    .local v1, type:I
    if-ltz v1, :cond_0

    if-gt v1, v5, :cond_0

    .line 24
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/ResetDisguisePasswordDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07004c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    aget-object v2, v3, v1

    .line 26
    .local v2, typeName:Ljava/lang/String;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/zte/heartyservice/privacy/ResetDisguisePasswordDialog;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0a053a

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a053b

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/zte/heartyservice/privacy/ResetDisguisePasswordDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a053c

    new-instance v5, Lcom/zte/heartyservice/privacy/ResetDisguisePasswordDialog$1;

    invoke-direct {v5, p0}, Lcom/zte/heartyservice/privacy/ResetDisguisePasswordDialog$1;-><init>(Lcom/zte/heartyservice/privacy/ResetDisguisePasswordDialog;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a052f

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 41
    .local v0, dialog:Landroid/app/AlertDialog;
    new-instance v3, Lcom/zte/heartyservice/privacy/ResetDisguisePasswordDialog$2;

    invoke-direct {v3, p0}, Lcom/zte/heartyservice/privacy/ResetDisguisePasswordDialog$2;-><init>(Lcom/zte/heartyservice/privacy/ResetDisguisePasswordDialog;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 46
    invoke-static {v0}, Lcom/zte/heartyservice/common/ui/DialogActivity;->setCustomAlertDialogStyle(Landroid/app/AlertDialog;)V

    .line 50
    .end local v0           #dialog:Landroid/app/AlertDialog;
    .end local v2           #typeName:Ljava/lang/String;
    :goto_0
    return-void

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/ResetDisguisePasswordDialog;->finish()V

    goto :goto_0
.end method
