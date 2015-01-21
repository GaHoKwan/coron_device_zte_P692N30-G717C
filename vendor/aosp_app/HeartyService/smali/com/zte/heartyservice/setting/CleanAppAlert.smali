.class public Lcom/zte/heartyservice/setting/CleanAppAlert;
.super Landroid/app/Activity;
.source "CleanAppAlert.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CleanAppAlert"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x2

    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-virtual {p0}, Lcom/zte/heartyservice/setting/CleanAppAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 31
    .local v3, r:Landroid/content/res/Resources;
    new-instance v0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 32
    .local v0, builder:Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;
    invoke-virtual {p0}, Lcom/zte/heartyservice/setting/CleanAppAlert;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "CLEAR_TYPE"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 34
    .local v1, clearType:I
    if-ne v1, v6, :cond_0

    .line 35
    const v4, 0x7f0a00a9

    invoke-virtual {v0, v4}, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->setTitle(I)Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;

    .line 41
    :goto_0
    const v4, 0x7f0a00cb

    invoke-virtual {v0, v4}, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->setMessage(I)Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;

    .line 42
    const v4, 0x7f0a0174

    new-instance v5, Lcom/zte/heartyservice/setting/CleanAppAlert$1;

    invoke-direct {v5, p0}, Lcom/zte/heartyservice/setting/CleanAppAlert$1;-><init>(Lcom/zte/heartyservice/setting/CleanAppAlert;)V

    invoke-virtual {v0, v4, v5}, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;

    .line 52
    const v4, 0x7f0a00cc

    new-instance v5, Lcom/zte/heartyservice/setting/CleanAppAlert$2;

    invoke-direct {v5, p0}, Lcom/zte/heartyservice/setting/CleanAppAlert$2;-><init>(Lcom/zte/heartyservice/setting/CleanAppAlert;)V

    invoke-virtual {v0, v4, v5}, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;

    .line 65
    invoke-virtual {v0}, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->create()Lcom/zte/heartyservice/common/datatype/NewDialog;

    move-result-object v2

    .line 66
    .local v2, dialog:Lcom/zte/heartyservice/common/datatype/NewDialog;
    invoke-static {p0, v2}, Lcom/zte/heartyservice/common/datatype/NewDialog;->setNewDialogWidth(Landroid/app/Activity;Landroid/app/Dialog;)V

    .line 67
    invoke-virtual {v2}, Lcom/zte/heartyservice/common/datatype/NewDialog;->show()V

    .line 68
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/zte/heartyservice/setting/CleanAppAlert;->setFinishOnTouchOutside(Z)V

    .line 70
    return-void

    .line 36
    .end local v2           #dialog:Lcom/zte/heartyservice/common/datatype/NewDialog;
    :cond_0
    const/4 v4, 0x7

    if-ne v1, v4, :cond_1

    .line 37
    const v4, 0x7f0a00a7

    invoke-virtual {v0, v4}, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->setTitle(I)Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;

    goto :goto_0

    .line 39
    :cond_1
    const v4, 0x7f0a000f

    invoke-virtual {v0, v4}, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->setTitle(I)Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;

    goto :goto_0
.end method
