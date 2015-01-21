.class public Lcom/zte/heartyservice/common/ui/DialogActivity;
.super Landroid/app/Activity;
.source "DialogActivity.java"


# static fields
.field public static final ARGS:Ljava/lang/String; = "args"

.field public static final CLASS_NAME:Ljava/lang/String; = "class_name"

.field public static final METHOD_NAME:Ljava/lang/String; = "method_name"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static setCustomAlertDialogStyle(Landroid/app/AlertDialog;)V
    .locals 11
    .parameter "dialog"

    .prologue
    const v10, 0x106000d

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 67
    if-eqz p0, :cond_7

    .line 68
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 69
    .local v5, window:Landroid/view/Window;
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 70
    .local v2, resources:Landroid/content/res/Resources;
    const/4 v4, 0x0

    .line 71
    .local v4, view:Landroid/view/View;
    const-string v6, "com.android.internal.R$id"

    const-string v7, "titleDivider"

    invoke-static {v6, v7}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->get_class_var_int(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 73
    .local v1, id:I
    if-lez v1, :cond_0

    .line 74
    invoke-virtual {v5, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 75
    if-eqz v4, :cond_0

    .line 76
    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 80
    :cond_0
    const-string v6, "com.android.internal.R$id"

    const-string v7, "titleDividerTop"

    invoke-static {v6, v7}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->get_class_var_int(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 82
    if-lez v1, :cond_1

    .line 83
    invoke-virtual {v5, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 84
    if-eqz v4, :cond_1

    .line 85
    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 89
    :cond_1
    const-string v6, "com.android.internal.R$id"

    const-string v7, "alertTitle"

    invoke-static {v6, v7}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->get_class_var_int(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 91
    if-lez v1, :cond_2

    .line 92
    invoke-virtual {v5, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 93
    if-eqz v4, :cond_2

    instance-of v6, v4, Landroid/widget/TextView;

    if-eqz v6, :cond_2

    move-object v6, v4

    .line 94
    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f08000c

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 98
    :cond_2
    const v6, 0x7f0b0067

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v3, v6

    .line 99
    .local v3, size:F
    const v6, 0x7f0b0134

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 101
    .local v0, height:I
    const v6, 0x1020019

    invoke-virtual {v5, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 102
    if-eqz v4, :cond_3

    instance-of v6, v4, Landroid/widget/Button;

    if-eqz v6, :cond_3

    move-object v6, v4

    .line 103
    check-cast v6, Landroid/widget/Button;

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setMinimumHeight(I)V

    move-object v6, v4

    .line 104
    check-cast v6, Landroid/widget/Button;

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setHeight(I)V

    move-object v6, v4

    .line 105
    check-cast v6, Landroid/widget/Button;

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setMinHeight(I)V

    .line 106
    check-cast v4, Landroid/widget/Button;

    .end local v4           #view:Landroid/view/View;
    invoke-virtual {v4, v9, v3}, Landroid/widget/Button;->setTextSize(IF)V

    .line 109
    :cond_3
    const v6, 0x102001a

    invoke-virtual {v5, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 110
    .restart local v4       #view:Landroid/view/View;
    if-eqz v4, :cond_4

    instance-of v6, v4, Landroid/widget/Button;

    if-eqz v6, :cond_4

    move-object v6, v4

    .line 111
    check-cast v6, Landroid/widget/Button;

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setMinimumHeight(I)V

    move-object v6, v4

    .line 112
    check-cast v6, Landroid/widget/Button;

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setHeight(I)V

    move-object v6, v4

    .line 113
    check-cast v6, Landroid/widget/Button;

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setMinHeight(I)V

    .line 114
    check-cast v4, Landroid/widget/Button;

    .end local v4           #view:Landroid/view/View;
    invoke-virtual {v4, v9, v3}, Landroid/widget/Button;->setTextSize(IF)V

    .line 117
    :cond_4
    const v6, 0x102001b

    invoke-virtual {v5, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 118
    .restart local v4       #view:Landroid/view/View;
    if-eqz v4, :cond_5

    instance-of v6, v4, Landroid/widget/Button;

    if-eqz v6, :cond_5

    move-object v6, v4

    .line 119
    check-cast v6, Landroid/widget/Button;

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setMinimumHeight(I)V

    move-object v6, v4

    .line 120
    check-cast v6, Landroid/widget/Button;

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setHeight(I)V

    move-object v6, v4

    .line 121
    check-cast v6, Landroid/widget/Button;

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setMinHeight(I)V

    move-object v6, v4

    .line 122
    check-cast v6, Landroid/widget/Button;

    invoke-virtual {v6, v9, v3}, Landroid/widget/Button;->setTextSize(IF)V

    .line 127
    :cond_5
    const-string v6, "com.android.internal.R$id"

    const-string v7, "topPanel"

    invoke-static {v6, v7}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->get_class_var_int(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 129
    if-lez v1, :cond_6

    .line 130
    invoke-virtual {v5, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 131
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_6

    .line 132
    const v6, 0x7f020097

    invoke-virtual {v4, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 154
    :cond_6
    const-string v6, "com.android.internal.R$id"

    const-string v7, "buttonPanel"

    invoke-static {v6, v7}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->get_class_var_int(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 156
    if-lez v1, :cond_7

    .line 157
    invoke-virtual {v5, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 158
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_7

    .line 159
    check-cast v4, Landroid/widget/LinearLayout;

    .end local v4           #view:Landroid/view/View;
    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setShowDividers(I)V

    .line 176
    .end local v0           #height:I
    .end local v1           #id:I
    .end local v2           #resources:Landroid/content/res/Resources;
    .end local v3           #size:F
    .end local v5           #window:Landroid/view/Window;
    :cond_7
    return-void
.end method

.method public static showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .parameter "context"
    .parameter "className"
    .parameter "methodName"
    .parameter "args"

    .prologue
    .line 58
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v1

    const-class v2, Lcom/zte/heartyservice/common/ui/DialogActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 60
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "class_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    const-string v1, "method_name"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    const-string v1, "args"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 63
    invoke-static {p0, v0}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->startActivitySafe(Landroid/content/Context;Landroid/content/Intent;)V

    .line 64
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const/4 v3, 0x0

    .line 32
    .local v3, dialog:Landroid/app/Dialog;
    :try_start_0
    invoke-virtual {p0}, Lcom/zte/heartyservice/common/ui/DialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 33
    .local v5, i:Landroid/content/Intent;
    const-string v8, "class_name"

    invoke-virtual {v5, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 34
    .local v2, className:Ljava/lang/String;
    const-string v8, "method_name"

    invoke-virtual {v5, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 35
    .local v6, methodName:Ljava/lang/String;
    const-string v8, "args"

    invoke-virtual {v5, v8}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 36
    .local v1, args:Landroid/os/Bundle;
    const/4 v8, 0x2

    new-array v7, v8, [Ljava/lang/Object;

    .line 37
    .local v7, params:[Ljava/lang/Object;
    const/4 v8, 0x0

    aput-object p0, v7, v8

    .line 38
    const/4 v8, 0x1

    aput-object v1, v7, v8

    .line 39
    const/4 v8, 0x0

    invoke-static {v2, v8, v6, v7}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->Load(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Landroid/app/Dialog;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .end local v1           #args:Landroid/os/Bundle;
    .end local v2           #className:Ljava/lang/String;
    .end local v5           #i:Landroid/content/Intent;
    .end local v6           #methodName:Ljava/lang/String;
    .end local v7           #params:[Ljava/lang/Object;
    :goto_0
    if-eqz v3, :cond_0

    .line 46
    new-instance v8, Lcom/zte/heartyservice/common/ui/DialogActivity$1;

    invoke-direct {v8, p0}, Lcom/zte/heartyservice/common/ui/DialogActivity$1;-><init>(Lcom/zte/heartyservice/common/ui/DialogActivity;)V

    invoke-virtual {v3, v8}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 54
    :goto_1
    return-void

    .line 41
    :catch_0
    move-exception v4

    .line 42
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 52
    .end local v4           #e:Ljava/lang/Exception;
    :cond_0
    invoke-virtual {p0}, Lcom/zte/heartyservice/common/ui/DialogActivity;->finish()V

    goto :goto_1
.end method
