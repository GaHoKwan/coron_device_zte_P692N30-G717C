.class public Lcom/zte/heartyservice/common/utils/AppUtils;
.super Ljava/lang/Object;
.source "AppUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/common/utils/AppUtils$PackageInstallObserver;
    }
.end annotation


# static fields
.field private static inputMethodView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    sput-object v0, Lcom/zte/heartyservice/common/utils/AppUtils;->inputMethodView:Landroid/view/View;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    return-void
.end method

.method static synthetic access$002(Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    sput-object p0, Lcom/zte/heartyservice/common/utils/AppUtils;->inputMethodView:Landroid/view/View;

    return-object p0
.end method

.method public static bkupFbkNotInstallDialog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9
    .parameter "context"
    .parameter "packageName"

    .prologue
    const v7, 0x7f0a009f

    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 122
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 123
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const-string v2, ""

    .line 124
    .local v2, message:Ljava/lang/String;
    const/4 v3, 0x0

    .line 125
    .local v3, mode:I
    const-string v5, "com.zte.backup.mmi"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 126
    new-array v5, v6, [Ljava/lang/Object;

    const v6, 0x7f0a0036

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v7, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 127
    const/4 v3, 0x2

    .line 133
    :goto_0
    move v4, v3

    .line 134
    .local v4, relMode:I
    const v5, 0x7f0a0010

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0a00a0

    new-instance v7, Lcom/zte/heartyservice/common/utils/AppUtils$2;

    invoke-direct {v7, p0, v4}, Lcom/zte/heartyservice/common/utils/AppUtils$2;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0a00a1

    new-instance v7, Lcom/zte/heartyservice/common/utils/AppUtils$1;

    invoke-direct {v7}, Lcom/zte/heartyservice/common/utils/AppUtils$1;-><init>()V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 163
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1, v8}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 164
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 165
    invoke-static {v1}, Lcom/zte/heartyservice/common/ui/DialogActivity;->setCustomAlertDialogStyle(Landroid/app/AlertDialog;)V

    .line 166
    return-void

    .line 129
    .end local v1           #dialog:Landroid/app/AlertDialog;
    .end local v4           #relMode:I
    :cond_0
    new-array v5, v6, [Ljava/lang/Object;

    const v6, 0x7f0a0039

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v7, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 131
    const/4 v3, 0x4

    goto :goto_0
.end method

.method public static hideInputMethod(Landroid/content/Context;Landroid/view/View;)V
    .locals 3
    .parameter "context"
    .parameter "view"

    .prologue
    .line 210
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 211
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 212
    return-void
.end method

.method public static hideInputMethodAppLockUse()V
    .locals 3

    .prologue
    .line 234
    sget-object v1, Lcom/zte/heartyservice/common/utils/AppUtils;->inputMethodView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 235
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 236
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    sget-object v1, Lcom/zte/heartyservice/common/utils/AppUtils;->inputMethodView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 238
    :cond_0
    const/4 v1, 0x0

    sput-object v1, Lcom/zte/heartyservice/common/utils/AppUtils;->inputMethodView:Landroid/view/View;

    .line 239
    return-void
.end method

.method public static installSilent(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "file"
    .parameter "packageName"

    .prologue
    .line 74
    const/4 v0, 0x0

    .line 75
    .local v0, installFlags:I
    new-instance v3, Lcom/zte/heartyservice/common/utils/AppUtils$PackageInstallObserver;

    invoke-direct {v3}, Lcom/zte/heartyservice/common/utils/AppUtils$PackageInstallObserver;-><init>()V

    .line 76
    .local v3, observer:Lcom/zte/heartyservice/common/utils/AppUtils$PackageInstallObserver;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 77
    .local v4, pm:Landroid/content/pm/PackageManager;
    or-int/lit8 v0, v0, 0x2

    .line 78
    move-object v1, p2

    .line 79
    .local v1, installerPackageName:Ljava/lang/String;
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 80
    .local v2, mPackageURI:Landroid/net/Uri;
    invoke-virtual {v4, v2, v3, v0, v1}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    .line 81
    return-void
.end method

.method public static isAppInstalledByAction(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "action"

    .prologue
    .line 176
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 177
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 179
    .local v1, resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 180
    const/4 v2, 0x0

    .line 182
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isViewVisible(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 67
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static realShowAdjDialog(Landroid/app/Activity;Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 22
    .parameter "activity"
    .parameter "args"

    .prologue
    .line 300
    const v17, 0x7f0a00f7

    .line 301
    .local v17, title:I
    const v14, 0x7f0a00f4

    .line 303
    .local v14, msg:I
    const/16 v16, -0x1

    .line 304
    .local v16, subId:I
    if-eqz p1, :cond_0

    .line 305
    const-string v2, "subscription"

    const/4 v6, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v16

    .line 307
    :cond_0
    move/from16 v7, v16

    .line 310
    .local v7, subscription:I
    const-string v2, "tab"

    const/4 v6, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 312
    .local v5, tab:I
    if-eqz p1, :cond_2

    .line 313
    const-string v2, "title"

    const/4 v6, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v15

    .line 314
    .local v15, resId:I
    if-lez v15, :cond_1

    .line 315
    move/from16 v17, v15

    .line 317
    :cond_1
    const-string v2, "msg"

    const/4 v6, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v15

    .line 318
    if-lez v15, :cond_2

    .line 319
    move v14, v15

    .line 323
    .end local v15           #resId:I
    :cond_2
    new-instance v8, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 324
    .local v8, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    .line 326
    .local v11, dialogInflater:Landroid/view/LayoutInflater;
    const v2, 0x7f030125

    const/4 v6, 0x0

    invoke-virtual {v11, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v19

    .line 329
    .local v19, view:Landroid/view/View;
    const v2, 0x7f0e0192

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setText(I)V

    .line 330
    const v2, 0x7f0e03c3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;

    .line 332
    .local v4, textPicker:Lcom/zte/heartyservice/common/datatype/ZTETextPicker;
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 333
    .local v18, values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "MB"

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    const-string v2, "GB"

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->initDisplayValues(Ljava/util/List;)V

    .line 336
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->setWrapSelectorWheel(Z)V

    .line 338
    const v2, 0x7f0e01bd

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 339
    .local v3, inputFlow:Landroid/widget/EditText;
    const-wide/16 v12, 0x0

    .line 342
    .local v12, initInputValue:D
    const/4 v2, 0x1

    if-ne v5, v2, :cond_6

    .line 343
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getInstance(Landroid/content/Context;)Lcom/zte/heartyservice/net/NetTrafficUtils;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getTrafficMonthIdleHoursUsed(I)D

    move-result-wide v12

    .line 350
    :cond_3
    :goto_0
    if-eqz v3, :cond_5

    const-wide/16 v20, 0x0

    cmpl-double v2, v12, v20

    if-ltz v2, :cond_5

    .line 351
    const-wide/high16 v20, 0x4090

    cmpl-double v2, v12, v20

    if-ltz v2, :cond_4

    .line 352
    const-wide/high16 v20, 0x4090

    div-double v12, v12, v20

    .line 353
    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->setValue(I)V

    .line 355
    :cond_4
    new-instance v9, Ljava/text/DecimalFormat;

    const-string v2, "###.##"

    invoke-direct {v9, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 356
    .local v9, df:Ljava/text/DecimalFormat;
    invoke-virtual {v9, v12, v13}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 358
    .end local v9           #df:Ljava/text/DecimalFormat;
    :cond_5
    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v6, 0x7f0a0174

    new-instance v20, Lcom/zte/heartyservice/common/utils/AppUtils$7;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3}, Lcom/zte/heartyservice/common/utils/AppUtils$7;-><init>(Landroid/app/Activity;Landroid/widget/EditText;)V

    move-object/from16 v0, v20

    invoke-virtual {v2, v6, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v20

    const v21, 0x7f0a0173

    new-instance v2, Lcom/zte/heartyservice/common/utils/AppUtils$6;

    move-object/from16 v6, p0

    invoke-direct/range {v2 .. v7}, Lcom/zte/heartyservice/common/utils/AppUtils$6;-><init>(Landroid/widget/EditText;Lcom/zte/heartyservice/common/datatype/ZTETextPicker;ILandroid/app/Activity;I)V

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v10

    .line 421
    .local v10, dialog:Landroid/app/AlertDialog;
    invoke-static {v10}, Lcom/zte/heartyservice/common/ui/DialogActivity;->setCustomAlertDialogStyle(Landroid/app/AlertDialog;)V

    .line 422
    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/zte/heartyservice/common/utils/AppUtils;->showSoftInput(Landroid/content/Context;Landroid/view/View;)V

    .line 424
    return-object v10

    .line 345
    .end local v10           #dialog:Landroid/app/AlertDialog;
    :cond_6
    const/4 v2, -0x1

    if-eq v5, v2, :cond_7

    if-nez v5, :cond_3

    .line 346
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getInstance(Landroid/content/Context;)Lcom/zte/heartyservice/net/NetTrafficUtils;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getTrafficMonthUsed(I)D

    move-result-wide v12

    goto :goto_0
.end method

.method public static realShowNetSetDialog(Landroid/app/Activity;Landroid/os/Bundle;Landroid/content/DialogInterface$OnClickListener;I)Landroid/app/Dialog;
    .locals 15
    .parameter "activity"
    .parameter "args"
    .parameter "positiveButtonClickListener"
    .parameter "initInputValue"

    .prologue
    .line 432
    const v8, 0x7f0a00ef

    .line 433
    .local v8, title:I
    const v5, 0x7f0a00f4

    .line 435
    .local v5, msg:I
    if-eqz p1, :cond_1

    .line 436
    const-string v11, "title"

    const/4 v12, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 437
    .local v6, resId:I
    if-lez v6, :cond_0

    .line 438
    move v8, v6

    .line 440
    :cond_0
    const-string v11, "msg"

    const/4 v12, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 441
    if-ltz v6, :cond_1

    .line 442
    move v5, v6

    .line 446
    .end local v6           #resId:I
    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 447
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 449
    .local v3, dialogInflater:Landroid/view/LayoutInflater;
    const v11, 0x7f030125

    const/4 v12, 0x0

    invoke-virtual {v3, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 452
    .local v10, view:Landroid/view/View;
    if-lez v5, :cond_4

    .line 453
    const v11, 0x7f0e0192

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    invoke-virtual {v11, v5}, Landroid/widget/TextView;->setText(I)V

    .line 458
    :goto_0
    const v11, 0x7f0e03c3

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;

    .line 460
    .local v7, textPicker:Lcom/zte/heartyservice/common/datatype/ZTETextPicker;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 461
    .local v9, values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v11, "MB"

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 462
    const-string v11, "GB"

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 463
    invoke-virtual {v7, v9}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->initDisplayValues(Ljava/util/List;)V

    .line 464
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->setWrapSelectorWheel(Z)V

    .line 466
    const v11, 0x7f0e01bd

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 467
    .local v4, inputFlow:Landroid/widget/EditText;
    if-eqz v4, :cond_3

    .line 468
    const/4 v11, 0x2

    invoke-virtual {v4, v11}, Landroid/widget/EditText;->setInputType(I)V

    .line 469
    const/4 v11, 0x1

    new-array v11, v11, [Landroid/text/InputFilter;

    const/4 v12, 0x0

    new-instance v13, Landroid/text/InputFilter$LengthFilter;

    const/4 v14, 0x4

    invoke-direct {v13, v14}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v13, v11, v12

    invoke-virtual {v4, v11}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 472
    if-ltz p3, :cond_3

    .line 473
    const/16 v11, 0x400

    move/from16 v0, p3

    if-lt v0, v11, :cond_2

    move/from16 v0, p3

    rem-int/lit16 v11, v0, 0x400

    if-nez v11, :cond_2

    .line 474
    move/from16 v0, p3

    div-int/lit16 v0, v0, 0x400

    move/from16 p3, v0

    .line 475
    const/4 v11, 0x1

    invoke-virtual {v7, v11}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->setValue(I)V

    .line 477
    :cond_2
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 480
    :cond_3
    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    invoke-virtual {v11, v10}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const v12, 0x7f0a0174

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const v12, 0x7f0a0173

    move-object/from16 v0, p2

    invoke-virtual {v11, v12, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    .line 484
    .local v2, dialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/zte/heartyservice/common/ui/DialogActivity;->setCustomAlertDialogStyle(Landroid/app/AlertDialog;)V

    .line 485
    new-instance v11, Lcom/zte/heartyservice/common/utils/AppUtils$8;

    invoke-direct {v11, p0, v4}, Lcom/zte/heartyservice/common/utils/AppUtils$8;-><init>(Landroid/app/Activity;Landroid/widget/EditText;)V

    invoke-virtual {v2, v11}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 493
    invoke-static {p0, v4}, Lcom/zte/heartyservice/common/utils/AppUtils;->showSoftInput(Landroid/content/Context;Landroid/view/View;)V

    .line 495
    return-object v2

    .line 455
    .end local v2           #dialog:Landroid/app/AlertDialog;
    .end local v4           #inputFlow:Landroid/widget/EditText;
    .end local v7           #textPicker:Lcom/zte/heartyservice/common/datatype/ZTETextPicker;
    .end local v9           #values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    const v11, 0x7f0e0192

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public static realShowNetSetDialog2(Landroid/app/Activity;Landroid/os/Bundle;Landroid/content/DialogInterface$OnClickListener;II)Landroid/app/Dialog;
    .locals 11
    .parameter "activity"
    .parameter "args"
    .parameter "positiveButtonClickListener"
    .parameter "initInputValue"
    .parameter "max"

    .prologue
    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 502
    const v6, 0x7f0a00f1

    .line 503
    .local v6, title:I
    const v4, 0x7f0a00f5

    .line 505
    .local v4, msg:I
    if-eqz p1, :cond_1

    .line 506
    const-string v8, "title"

    invoke-virtual {p1, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 507
    .local v5, resId:I
    if-lez v5, :cond_0

    .line 508
    move v6, v5

    .line 510
    :cond_0
    const-string v8, "msg"

    invoke-virtual {p1, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 511
    if-lez v5, :cond_1

    .line 512
    move v4, v5

    .line 516
    .end local v5           #resId:I
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 517
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 519
    .local v2, dialogInflater:Landroid/view/LayoutInflater;
    const v8, 0x7f030087

    invoke-virtual {v2, v8, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 522
    .local v7, view:Landroid/view/View;
    const v8, 0x7f0e0192

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(I)V

    .line 525
    const v8, 0x7f0e01bd

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 526
    .local v3, inputFlow:Landroid/widget/EditText;
    if-eqz v3, :cond_2

    .line 527
    new-instance v8, Lcom/zte/heartyservice/common/utils/AppUtils$9;

    invoke-direct {v8, p4}, Lcom/zte/heartyservice/common/utils/AppUtils$9;-><init>(I)V

    invoke-virtual {v3, v8}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 557
    if-ltz p3, :cond_2

    .line 558
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 561
    :cond_2
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f0a0174

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f0a0173

    invoke-virtual {v8, v9, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    .line 565
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/zte/heartyservice/common/ui/DialogActivity;->setCustomAlertDialogStyle(Landroid/app/AlertDialog;)V

    .line 566
    new-instance v8, Lcom/zte/heartyservice/common/utils/AppUtils$10;

    invoke-direct {v8, p0, v3}, Lcom/zte/heartyservice/common/utils/AppUtils$10;-><init>(Landroid/app/Activity;Landroid/widget/EditText;)V

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 574
    invoke-static {p0, v3}, Lcom/zte/heartyservice/common/utils/AppUtils;->showSoftInput(Landroid/content/Context;Landroid/view/View;)V

    .line 576
    return-object v1
.end method

.method public static showAdjDialog(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 2
    .parameter "context"
    .parameter "args"

    .prologue
    .line 294
    const-class v0, Lcom/zte/heartyservice/common/utils/AppUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "realShowAdjDialog"

    invoke-static {p0, v0, v1, p1}, Lcom/zte/heartyservice/common/ui/DialogActivity;->showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 296
    return-void
.end method

.method public static showInputMethod(Landroid/content/Context;Landroid/view/View;)V
    .locals 4
    .parameter "context"
    .parameter "view"

    .prologue
    .line 192
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 193
    .local v0, timer:Ljava/util/Timer;
    new-instance v1, Lcom/zte/heartyservice/common/utils/AppUtils$3;

    invoke-direct {v1, p0, p1}, Lcom/zte/heartyservice/common/utils/AppUtils$3;-><init>(Landroid/content/Context;Landroid/view/View;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 201
    return-void
.end method

.method public static showInputMethodAppLockUse(Landroid/content/Context;Landroid/view/View;)V
    .locals 4
    .parameter "context"
    .parameter "view"

    .prologue
    .line 221
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 222
    .local v0, timer:Ljava/util/Timer;
    new-instance v1, Lcom/zte/heartyservice/common/utils/AppUtils$4;

    invoke-direct {v1, p0, p1}, Lcom/zte/heartyservice/common/utils/AppUtils$4;-><init>(Landroid/content/Context;Landroid/view/View;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 231
    return-void
.end method

.method public static showSoftInput(Landroid/content/Context;Landroid/view/View;)V
    .locals 4
    .parameter "context"
    .parameter "view"

    .prologue
    .line 242
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 243
    .local v0, timer:Ljava/util/Timer;
    new-instance v1, Lcom/zte/heartyservice/common/utils/AppUtils$5;

    invoke-direct {v1, p0, p1}, Lcom/zte/heartyservice/common/utils/AppUtils$5;-><init>(Landroid/content/Context;Landroid/view/View;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 250
    return-void
.end method

.method public static unzipAssetsFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "assetFileName"
    .parameter "tmpFileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 104
    .local v0, assetManager:Landroid/content/res/AssetManager;
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 105
    .local v2, inputStream:Ljava/io/InputStream;
    const/4 v4, 0x3

    invoke-virtual {p0, p2, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    .line 107
    .local v3, outputStream:Ljava/io/FileOutputStream;
    const/16 v4, 0x200

    new-array v1, v4, [B

    .line 108
    .local v1, bytes:[B
    :goto_0
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_0

    .line 109
    invoke-virtual {v3, v1}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_0

    .line 111
    :cond_0
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 112
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 113
    return-void
.end method
