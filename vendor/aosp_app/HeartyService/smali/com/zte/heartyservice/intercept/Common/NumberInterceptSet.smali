.class public Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;
.super Landroid/app/Activity;
.source "NumberInterceptSet.java"


# static fields
.field public static final ACTION_BLACK_LIST_MODIFY:Ljava/lang/String; = "com.zte.heartyservice.intent.action.BLACK_LIST_MODIFY"

.field private static final IN_BLACK_LIST:I = 0x1

.field private static final IN_WHITE_LIST:I = 0x2

.field private static final NOT_IN_LIST:I = 0x0

.field public static final NUMBER:Ljava/lang/String; = "number"

.field public static final RULE:Ljava/lang/String; = "rule"


# instance fields
.field private mChecked:[Z

.field private mContext:Landroid/content/Context;

.field private mEngine:Lcom/zte/heartyservice/porting/All/VirusDBEngine;

.field private mIsModify:Z

.field private mName:Ljava/lang/String;

.field private mNumber:Ljava/lang/String;

.field private mNumberType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 30
    const/4 v0, 0x3

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->mChecked:[Z

    .line 31
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getCurrentVirusDBEngine()Lcom/zte/heartyservice/porting/All/VirusDBEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->mEngine:Lcom/zte/heartyservice/porting/All/VirusDBEngine;

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->mNumberType:I

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->mIsModify:Z

    return-void

    .line 30
    :array_0
    .array-data 0x1
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget v0, p0, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->mNumberType:I

    return v0
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;)Lcom/zte/heartyservice/porting/All/VirusDBEngine;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->mEngine:Lcom/zte/heartyservice/porting/All/VirusDBEngine;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->showAddToBlackListDialog()V

    return-void
.end method

.method static synthetic access$500(Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->mName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;)[Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->mChecked:[Z

    return-object v0
.end method

.method static synthetic access$700(Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->mIsModify:Z

    return v0
.end method

.method public static fomatNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "number"

    .prologue
    const/4 v4, 0x3

    .line 205
    if-nez p0, :cond_1

    .line 206
    const/4 p0, 0x0

    .line 216
    .local v0, m:Ljava/util/regex/Matcher;
    .local v1, p:Ljava/util/regex/Pattern;
    :cond_0
    :goto_0
    return-object p0

    .line 208
    .end local v0           #m:Ljava/util/regex/Matcher;
    .end local v1           #p:Ljava/util/regex/Pattern;
    :cond_1
    const-string v2, "[^0-9\\+\\*]"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 209
    .restart local v1       #p:Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 210
    .restart local v0       #m:Ljava/util/regex/Matcher;
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p0

    .line 212
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "+86"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 213
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private showAddToBlackListDialog()V
    .locals 6

    .prologue
    .line 151
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 152
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f020017

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0388

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f07003d

    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->mChecked:[Z

    new-instance v5, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet$4;

    invoke-direct {v5, p0}, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet$4;-><init>(Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;)V

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0173

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet$3;

    invoke-direct {v4, p0}, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet$3;-><init>(Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0174

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    .line 195
    .local v1, dialog:Landroid/app/AlertDialog;
    new-instance v2, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet$5;

    invoke-direct {v2, p0}, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet$5;-><init>(Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 200
    invoke-static {v1}, Lcom/zte/heartyservice/common/ui/DialogActivity;->setCustomAlertDialogStyle(Landroid/app/AlertDialog;)V

    .line 202
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    const v12, 0x7f0a05b2

    const v11, 0x7f0a05b1

    const/4 v10, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    iput-object p0, p0, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->mContext:Landroid/content/Context;

    .line 43
    invoke-virtual {p0}, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 44
    .local v2, intent:Landroid/content/Intent;
    const-string v6, "number"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->fomatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->mNumber:Ljava/lang/String;

    .line 45
    iget-object v6, p0, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->mNumber:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 46
    iget-object v6, p0, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0387

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 49
    invoke-virtual {p0}, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->finish()V

    .line 148
    :goto_0
    return-void

    .line 53
    :cond_0
    new-array v5, v10, [Ljava/lang/String;

    .line 54
    .local v5, select:[Ljava/lang/String;
    iget-object v6, p0, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->mEngine:Lcom/zte/heartyservice/porting/All/VirusDBEngine;

    iget-object v9, p0, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->mNumber:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/zte/heartyservice/porting/All/VirusDBEngine;->isInWhiteList(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 55
    invoke-virtual {p0, v11}, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    .line 56
    const v6, 0x7f0a05b4

    invoke-virtual {p0, v6}, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    .line 57
    iput v10, p0, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->mNumberType:I

    .line 68
    :goto_1
    iget-object v6, p0, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->mNumber:Ljava/lang/String;

    invoke-static {v6}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getNumberName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->mName:Ljava/lang/String;

    .line 70
    iget-object v6, p0, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->mName:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 71
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->mNumber:Ljava/lang/String;

    .line 72
    .local v3, msg:Ljava/lang/String;
    const-string v6, ""

    iput-object v6, p0, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->mName:Ljava/lang/String;

    .line 77
    :goto_2
    const-string v6, "com.zte.heartyservice.intent.action.BLACK_LIST_MODIFY"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 78
    iget v6, p0, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->mNumberType:I

    if-ne v6, v7, :cond_6

    .line 79
    iput-boolean v7, p0, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->mIsModify:Z

    .line 80
    const-string v6, "rule"

    const/4 v9, 0x3

    invoke-virtual {v2, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 81
    .local v4, rule:I
    iget-object v9, p0, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->mChecked:[Z

    and-int/lit8 v6, v4, 0x1

    if-eqz v6, :cond_5

    move v6, v7

    :goto_3
    aput-boolean v6, v9, v8

    .line 82
    iget-object v6, p0, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->mChecked:[Z

    and-int/lit8 v9, v4, 0x2

    if-eqz v9, :cond_1

    move v8, v7

    :cond_1
    aput-boolean v8, v6, v7

    .line 83
    invoke-direct {p0}, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->showAddToBlackListDialog()V

    goto :goto_0

    .line 58
    .end local v3           #msg:Ljava/lang/String;
    .end local v4           #rule:I
    :cond_2
    iget-object v6, p0, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->mEngine:Lcom/zte/heartyservice/porting/All/VirusDBEngine;

    iget-object v9, p0, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->mNumber:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/zte/heartyservice/porting/All/VirusDBEngine;->isInBlackList(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 59
    const v6, 0x7f0a05b3

    invoke-virtual {p0, v6}, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    .line 60
    invoke-virtual {p0, v12}, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    .line 61
    iput v7, p0, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->mNumberType:I

    goto :goto_1

    .line 63
    :cond_3
    invoke-virtual {p0, v11}, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    .line 64
    invoke-virtual {p0, v12}, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    .line 65
    iput v8, p0, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->mNumberType:I

    goto :goto_1

    .line 74
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->mName:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ":"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v9, p0, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->mNumber:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #msg:Ljava/lang/String;
    goto :goto_2

    .restart local v4       #rule:I
    :cond_5
    move v6, v8

    .line 81
    goto :goto_3

    .line 85
    .end local v4           #rule:I
    :cond_6
    invoke-virtual {p0}, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->finish()V

    goto/16 :goto_0

    .line 90
    :cond_7
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 92
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v6, 0x7f020017

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const/4 v7, -0x1

    new-instance v8, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet$1;

    invoke-direct {v8, p0}, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet$1;-><init>(Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;)V

    invoke-virtual {v6, v5, v7, v8}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    .line 141
    .local v1, dialog:Landroid/app/AlertDialog;
    new-instance v6, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet$2;

    invoke-direct {v6, p0}, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet$2;-><init>(Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;)V

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 147
    invoke-static {v1}, Lcom/zte/heartyservice/common/ui/DialogActivity;->setCustomAlertDialogStyle(Landroid/app/AlertDialog;)V

    goto/16 :goto_0
.end method
