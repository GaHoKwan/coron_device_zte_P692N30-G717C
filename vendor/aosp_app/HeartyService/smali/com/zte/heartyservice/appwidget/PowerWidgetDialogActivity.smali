.class public Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;
.super Landroid/app/Activity;
.source "PowerWidgetDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity$ViewHolder;,
        Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity$DialogAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PowerWidgetDialogActivity"


# instance fields
.field private mAdapter:Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity$DialogAdapter;

.field private mHandler:Landroid/os/Handler;

.field private mListView:Landroid/widget/ListView;

.field private mSwitchTools:Lcom/zte/heartyservice/power/SwitchTools;

.field private sp:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 45
    new-instance v0, Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity$1;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity$1;-><init>(Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;)V

    iput-object v0, p0, Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;->mHandler:Landroid/os/Handler;

    .line 192
    return-void
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;)Lcom/zte/heartyservice/power/SwitchTools;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;->mSwitchTools:Lcom/zte/heartyservice/power/SwitchTools;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;->sp:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;->switchPowerMode(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;)Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity$DialogAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;->mAdapter:Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity$DialogAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method private switchPowerMode(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 119
    iget-object v0, p0, Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 120
    iget-object v0, p0, Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 121
    iget-object v0, p0, Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 122
    iget-object v0, p0, Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 123
    invoke-virtual {p0}, Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;->finish()V

    .line 124
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x1

    .line 60
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    new-instance v5, Lcom/zte/heartyservice/power/SwitchTools;

    invoke-direct {v5, p0}, Lcom/zte/heartyservice/power/SwitchTools;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;->mSwitchTools:Lcom/zte/heartyservice/power/SwitchTools;

    .line 63
    const-string v5, "powermanager"

    const/4 v6, 0x2

    invoke-virtual {p0, v5, v6}, Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;->sp:Landroid/content/SharedPreferences;

    .line 65
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 66
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f030130

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 67
    .local v3, layout:Landroid/view/View;
    const v5, 0x7f0e02d9

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    iput-object v5, p0, Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;->mListView:Landroid/widget/ListView;

    .line 68
    iget-object v5, p0, Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, v8}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 69
    new-instance v5, Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity$DialogAdapter;

    invoke-direct {v5, p0, p0}, Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity$DialogAdapter;-><init>(Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;Landroid/content/Context;)V

    iput-object v5, p0, Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;->mAdapter:Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity$DialogAdapter;

    .line 70
    iget-object v5, p0, Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;->mListView:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;->mAdapter:Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity$DialogAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 71
    iget-object v5, p0, Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;->mListView:Landroid/widget/ListView;

    new-instance v6, Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity$2;

    invoke-direct {v6, p0}, Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity$2;-><init>(Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 78
    iget-object v5, p0, Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;->sp:Landroid/content/SharedPreferences;

    const-string v6, "current_mode_id"

    const/4 v7, 0x4

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 79
    .local v4, modeId:I
    iget-object v5, p0, Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;->mListView:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;->mSwitchTools:Lcom/zte/heartyservice/power/SwitchTools;

    invoke-virtual {v6, v4}, Lcom/zte/heartyservice/power/SwitchTools;->getPosition(I)I

    move-result v6

    invoke-virtual {v5, v6, v8}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 81
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 82
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v5, 0x7f0a04de

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 83
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 84
    const v5, 0x7f0a04df

    new-instance v6, Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity$3;

    invoke-direct {v6, p0}, Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity$3;-><init>(Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 98
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 99
    .local v1, dialog:Landroid/app/AlertDialog;
    new-instance v5, Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity$4;

    invoke-direct {v5, p0}, Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity$4;-><init>(Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 105
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 106
    invoke-static {v1}, Lcom/zte/heartyservice/common/ui/DialogActivity;->setCustomAlertDialogStyle(Landroid/app/AlertDialog;)V

    .line 107
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 114
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 115
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 110
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 111
    return-void
.end method
