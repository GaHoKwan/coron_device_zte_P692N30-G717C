.class public Lzte/com/cn/cloudnotepad/ui/FirstEnterHelpActivity;
.super Landroid/app/Activity;
.source "FirstEnterHelpActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzte/com/cn/cloudnotepad/ui/FirstEnterHelpActivity$StartTask;
    }
.end annotation


# static fields
.field private static final PAGER_NUMBER:I = 0x3

.field private static mHelpImageIds:[Ljava/lang/Integer;

.field private static mHelpItemIds:[Ljava/lang/Integer;

.field private static mHelpTextIds:[Ljava/lang/Integer;


# instance fields
.field private editor:Landroid/content/SharedPreferences$Editor;

.field private mHelpAdapter:Lzte/com/cn/cloudnotepad/ui/FirstEnterHelpAdapter;

.field private mListViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mSelect:Landroid/widget/CheckBox;

.field private mServiceLayout:Landroid/widget/LinearLayout;

.field private mServiceText:Landroid/widget/TextView;

.field private mStartButton:Landroid/widget/Button;

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private preferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 50
    new-array v0, v5, [Ljava/lang/Integer;

    .line 51
    const v1, 0x7f020042

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const v1, 0x7f020043

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    .line 52
    const v1, 0x7f020044

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    .line 49
    sput-object v0, Lzte/com/cn/cloudnotepad/ui/FirstEnterHelpActivity;->mHelpImageIds:[Ljava/lang/Integer;

    .line 56
    new-array v0, v5, [Ljava/lang/Integer;

    .line 57
    const v1, 0x7f020045

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const v1, 0x7f020046

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    .line 58
    const v1, 0x7f020047

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    .line 55
    sput-object v0, Lzte/com/cn/cloudnotepad/ui/FirstEnterHelpActivity;->mHelpItemIds:[Ljava/lang/Integer;

    .line 62
    new-array v0, v5, [Ljava/lang/Integer;

    .line 63
    const v1, 0x7f0900fc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const v1, 0x7f0900fd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    .line 64
    const v1, 0x7f0900fe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    .line 61
    sput-object v0, Lzte/com/cn/cloudnotepad/ui/FirstEnterHelpActivity;->mHelpTextIds:[Ljava/lang/Integer;

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/FirstEnterHelpActivity;->mListViews:Ljava/util/ArrayList;

    .line 31
    return-void
.end method

.method private acceptService(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 227
    check-cast p1, Landroid/widget/CheckBox;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 228
    const/4 v0, 0x1

    .line 232
    .local v0, isAccept:Z
    :goto_0
    new-instance v1, Lzte/com/cn/cloudnotepad/ui/StaticsPolicy;

    invoke-direct {v1, p0}, Lzte/com/cn/cloudnotepad/ui/StaticsPolicy;-><init>(Landroid/content/Context;)V

    .line 233
    .local v1, staticsPolicy:Lzte/com/cn/cloudnotepad/ui/StaticsPolicy;
    invoke-virtual {v1, v0}, Lzte/com/cn/cloudnotepad/ui/StaticsPolicy;->setAcceptPreference(Z)V

    .line 234
    const-string v2, "zhangxue"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isAccept="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/FirstEnterHelpActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v5, "isAccept"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    return-void

    .line 230
    .end local v0           #isAccept:Z
    .end local v1           #staticsPolicy:Lzte/com/cn/cloudnotepad/ui/StaticsPolicy;
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #isAccept:Z
    goto :goto_0
.end method

.method static synthetic access$0(Lzte/com/cn/cloudnotepad/ui/FirstEnterHelpActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 211
    invoke-direct {p0, p1}, Lzte/com/cn/cloudnotepad/ui/FirstEnterHelpActivity;->setProgressDialog(I)V

    return-void
.end method

.method static synthetic access$1(Lzte/com/cn/cloudnotepad/ui/FirstEnterHelpActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/FirstEnterHelpActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private initViewPager()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x0

    .line 85
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-lt v3, v9, :cond_0

    .line 112
    new-instance v5, Lzte/com/cn/cloudnotepad/ui/FirstEnterHelpAdapter;

    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/FirstEnterHelpActivity;->mListViews:Ljava/util/ArrayList;

    invoke-direct {v5, v6}, Lzte/com/cn/cloudnotepad/ui/FirstEnterHelpAdapter;-><init>(Ljava/util/ArrayList;)V

    iput-object v5, p0, Lzte/com/cn/cloudnotepad/ui/FirstEnterHelpActivity;->mHelpAdapter:Lzte/com/cn/cloudnotepad/ui/FirstEnterHelpAdapter;

    .line 113
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/FirstEnterHelpActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/FirstEnterHelpActivity;->mHelpAdapter:Lzte/com/cn/cloudnotepad/ui/FirstEnterHelpAdapter;

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 114
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/FirstEnterHelpActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5, v8}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 115
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/FirstEnterHelpActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 116
    invoke-direct {p0, v8}, Lzte/com/cn/cloudnotepad/ui/FirstEnterHelpActivity;->updateIndicater(I)V

    .line 117
    return-void

    .line 86
    :cond_0
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/FirstEnterHelpActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f030014

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 88
    .local v4, pager:Landroid/view/View;
    const v5, 0x7f060051

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 89
    .local v0, helpImage:Landroid/widget/ImageView;
    const v5, 0x7f060053

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 90
    .local v1, helpItem:Landroid/widget/ImageView;
    const v5, 0x7f060052

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 92
    .local v2, helpText:Landroid/widget/TextView;
    if-ge v3, v9, :cond_1

    .line 93
    sget-object v5, Lzte/com/cn/cloudnotepad/ui/FirstEnterHelpActivity;->mHelpImageIds:[Ljava/lang/Integer;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 94
    sget-object v5, Lzte/com/cn/cloudnotepad/ui/FirstEnterHelpActivity;->mHelpItemIds:[Ljava/lang/Integer;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 95
    sget-object v5, Lzte/com/cn/cloudnotepad/ui/FirstEnterHelpActivity;->mHelpTextIds:[Ljava/lang/Integer;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 98
    :cond_1
    const/4 v5, 0x2

    if-ne v3, v5, :cond_2

    .line 99
    const v5, 0x7f060054

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lzte/com/cn/cloudnotepad/ui/FirstEnterHelpActivity;->mServiceLayout:Landroid/widget/LinearLayout;

    .line 101
    const v5, 0x7f060055

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lzte/com/cn/cloudnotepad/ui/FirstEnterHelpActivity;->mStartButton:Landroid/widget/Button;

    .line 102
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/FirstEnterHelpActivity;->mStartButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    const v5, 0x7f060056

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lzte/com/cn/cloudnotepad/ui/FirstEnterHelpActivity;->mSelect:Landroid/widget/CheckBox;

    .line 105
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/FirstEnterHelpActivity;->mSelect:Landroid/widget/CheckBox;

    invoke-virtual {v5, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    const v5, 0x7f06000f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lzte/com/cn/cloudnotepad/ui/FirstEnterHelpActivity;->mServiceText:Landroid/widget/TextView;

    .line 108
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/FirstEnterHelpActivity;->mServiceText:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    :cond_2
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/FirstEnterHelpActivity;->mListViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0
.end method

.method private setProgressDialog(I)V
    .locals 3
    .parameter "resId"

    .prologue
    const/4 v2, 0x0

    .line 212
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/FirstEnterHelpActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 213
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/FirstEnterHelpActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 214
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/FirstEnterHelpActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0, p1}, Lzte/com/cn/cloudnotepad/ui/FirstEnterHelpActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 215
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/FirstEnterHelpActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 217
    :try_start_0
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/FirstEnterHelpActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :goto_0
    return-void

    .line 218
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private showServiceDialog()V
    .locals 3

    .prologue
    .line 239
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 240
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/FirstEnterHelpActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900bb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 241
    const v1, 0x7f0900bc

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 242
    const v1, 0x7f090039

    new-instance v2, Lzte/com/cn/cloudnotepad/ui/FirstEnterHelpActivity$1;

    invoke-direct {v2, p0}, Lzte/com/cn/cloudnotepad/ui/FirstEnterHelpActivity$1;-><init>(Lzte/com/cn/cloudnotepad/ui/FirstEnterHelpActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 249
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 250
    return-void
.end method

.method private updateIndicater(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 121
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 122
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/FirstEnterHelpActivity;->mServiceLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 127
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/FirstEnterHelpActivity;->mServiceLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 165
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 182
    :goto_0
    return-void

    .line 167
    :sswitch_0
    const-string v3, "count"

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lzte/com/cn/cloudnotepad/ui/FirstEnterHelpActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 168
    .local v1, sharePreferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 169
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "first"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 170
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 172
    new-instance v2, Lzte/com/cn/cloudnotepad/ui/FirstEnterHelpActivity$StartTask;

    invoke-direct {v2, p0, p0}, Lzte/com/cn/cloudnotepad/ui/FirstEnterHelpActivity$StartTask;-><init>(Lzte/com/cn/cloudnotepad/ui/FirstEnterHelpActivity;Landroid/content/Context;)V

    .line 173
    .local v2, task:Lzte/com/cn/cloudnotepad/ui/FirstEnterHelpActivity$StartTask;
    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lzte/com/cn/cloudnotepad/ui/FirstEnterHelpActivity$StartTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 176
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #sharePreferences:Landroid/content/SharedPreferences;
    .end local v2           #task:Lzte/com/cn/cloudnotepad/ui/FirstEnterHelpActivity$StartTask;
    :sswitch_1
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/FirstEnterHelpActivity;->showServiceDialog()V

    goto :goto_0

    .line 179
    :sswitch_2
    invoke-direct {p0, p1}, Lzte/com/cn/cloudnotepad/ui/FirstEnterHelpActivity;->acceptService(Landroid/view/View;)V

    goto :goto_0

    .line 165
    :sswitch_data_0
    .sparse-switch
        0x7f06000f -> :sswitch_1
        0x7f060055 -> :sswitch_0
        0x7f060056 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    .line 70
    invoke-virtual {p0, v2}, Lzte/com/cn/cloudnotepad/ui/FirstEnterHelpActivity;->requestWindowFeature(I)Z

    .line 71
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    const v0, 0x7f030013

    invoke-virtual {p0, v0}, Lzte/com/cn/cloudnotepad/ui/FirstEnterHelpActivity;->setContentView(I)V

    .line 74
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/FirstEnterHelpActivity;->preferences:Landroid/content/SharedPreferences;

    .line 75
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/FirstEnterHelpActivity;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/FirstEnterHelpActivity;->editor:Landroid/content/SharedPreferences$Editor;

    .line 76
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/FirstEnterHelpActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "isAccept"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 78
    const v0, 0x7f06004f

    invoke-virtual {p0, v0}, Lzte/com/cn/cloudnotepad/ui/FirstEnterHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/FirstEnterHelpActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 79
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/FirstEnterHelpActivity;->initViewPager()V

    .line 80
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 133
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 139
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lzte/com/cn/cloudnotepad/ui/FirstEnterHelpActivity;->updateIndicater(I)V

    .line 145
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 150
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 151
    sput-boolean v4, Lzte/com/cn/cloudnotepad/NoteApp;->isLowSpace:Z

    .line 152
    invoke-static {}, Lzte/com/cn/cloudnotepad/NoteApp;->getInstance()Lzte/com/cn/cloudnotepad/NoteApp;

    move-result-object v2

    invoke-virtual {v2}, Lzte/com/cn/cloudnotepad/NoteApp;->getAvailableInternalMemorySize()J

    move-result-wide v0

    .line 153
    .local v0, lAvailableFlash:J
    const-wide/32 v2, 0x300000

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 154
    const/4 v2, 0x1

    sput-boolean v2, Lzte/com/cn/cloudnotepad/NoteApp;->isLowSpace:Z

    .line 155
    const v2, 0x7f09009e

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 156
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/FirstEnterHelpActivity;->finish()V

    .line 159
    :cond_0
    return-void
.end method
