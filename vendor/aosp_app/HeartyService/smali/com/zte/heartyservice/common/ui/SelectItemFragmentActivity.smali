.class public Lcom/zte/heartyservice/common/ui/SelectItemFragmentActivity;
.super Landroid/app/Activity;
.source "SelectItemFragmentActivity.java"


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.zte.ui.SelectItemFragment"

.field public static final FRAGMENT_NAME:Ljava/lang/String; = "fragment_name"


# instance fields
.field private mAllBtn:Landroid/view/View;

.field private mFragment:Landroid/app/Fragment;

.field private mInflator:Landroid/view/LayoutInflater;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/heartyservice/common/ui/SelectItemFragmentActivity;->mFragment:Landroid/app/Fragment;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/16 v8, 0x10

    const/4 v9, 0x0

    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    invoke-virtual {p0}, Lcom/zte/heartyservice/common/ui/SelectItemFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "fragment_name"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 29
    .local v3, fname:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 30
    invoke-virtual {p0}, Lcom/zte/heartyservice/common/ui/SelectItemFragmentActivity;->finish()V

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 34
    :cond_1
    invoke-virtual {p0}, Lcom/zte/heartyservice/common/ui/SelectItemFragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 35
    .local v1, bar:Landroid/app/ActionBar;
    const/16 v6, 0x8

    invoke-virtual {v1, v9, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 36
    invoke-virtual {v1, v8}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 37
    invoke-virtual {v1, v8, v8}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 39
    const-string v6, "layout_inflater"

    invoke-virtual {p0, v6}, Lcom/zte/heartyservice/common/ui/SelectItemFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    iput-object v6, p0, Lcom/zte/heartyservice/common/ui/SelectItemFragmentActivity;->mInflator:Landroid/view/LayoutInflater;

    .line 40
    iget-object v6, p0, Lcom/zte/heartyservice/common/ui/SelectItemFragmentActivity;->mInflator:Landroid/view/LayoutInflater;

    const v7, 0x7f03000d

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 41
    .local v5, layout:Landroid/view/View;
    const v6, 0x7f0e0030

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/zte/heartyservice/common/ui/SelectItemFragmentActivity;->mAllBtn:Landroid/view/View;

    .line 42
    const v6, 0x7f0e002e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/zte/heartyservice/common/ui/SelectItemFragmentActivity;->mTitle:Landroid/widget/TextView;

    .line 43
    const v6, 0x7f0e002c

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 44
    .local v0, backButton:Landroid/view/View;
    new-instance v6, Lcom/zte/heartyservice/common/ui/SelectItemFragmentActivity$1;

    invoke-direct {v6, p0}, Lcom/zte/heartyservice/common/ui/SelectItemFragmentActivity$1;-><init>(Lcom/zte/heartyservice/common/ui/SelectItemFragmentActivity;)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    invoke-virtual {p0, v9, v9}, Lcom/zte/heartyservice/common/ui/SelectItemFragmentActivity;->updateActionBar(IZ)V

    .line 50
    invoke-virtual {v1, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 52
    :try_start_0
    invoke-virtual {p0}, Lcom/zte/heartyservice/common/ui/SelectItemFragmentActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    .line 54
    .local v4, ft:Landroid/app/FragmentTransaction;
    invoke-static {p0, v3}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v6

    iput-object v6, p0, Lcom/zte/heartyservice/common/ui/SelectItemFragmentActivity;->mFragment:Landroid/app/Fragment;

    .line 55
    const v6, 0x1020002

    iget-object v7, p0, Lcom/zte/heartyservice/common/ui/SelectItemFragmentActivity;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v4, v6, v7}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 56
    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commit()I

    .line 58
    iget-object v6, p0, Lcom/zte/heartyservice/common/ui/SelectItemFragmentActivity;->mFragment:Landroid/app/Fragment;

    instance-of v6, v6, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;

    if-eqz v6, :cond_0

    .line 59
    iget-object v7, p0, Lcom/zte/heartyservice/common/ui/SelectItemFragmentActivity;->mAllBtn:Landroid/view/View;

    iget-object v6, p0, Lcom/zte/heartyservice/common/ui/SelectItemFragmentActivity;->mFragment:Landroid/app/Fragment;

    check-cast v6, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;

    invoke-virtual {v7, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 61
    .end local v4           #ft:Landroid/app/FragmentTransaction;
    :catch_0
    move-exception v2

    .line 62
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 63
    invoke-virtual {p0}, Lcom/zte/heartyservice/common/ui/SelectItemFragmentActivity;->finish()V

    goto :goto_0
.end method

.method public updateActionBar(IZ)V
    .locals 4
    .parameter "seletctNum"
    .parameter "selectAll"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/zte/heartyservice/common/ui/SelectItemFragmentActivity;->mTitle:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zte/heartyservice/common/ui/SelectItemFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a011b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v0, p0, Lcom/zte/heartyservice/common/ui/SelectItemFragmentActivity;->mAllBtn:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setActivated(Z)V

    .line 71
    return-void
.end method
