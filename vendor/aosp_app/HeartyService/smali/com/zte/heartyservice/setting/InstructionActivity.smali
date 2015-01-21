.class public Lcom/zte/heartyservice/setting/InstructionActivity;
.super Landroid/app/Activity;
.source "InstructionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final downloadURL:Ljava/lang/String; = "http://apps.ztems.com/ztetd/index.html"

.field private static final forumURL:Ljava/lang/String; = "http://www.myzte.cn/forum-327-1.html"


# instance fields
.field private adviceView:Landroid/view/View;

.field private downloadView:Landroid/view/View;

.field private forumView:Landroid/view/View;

.field mUE:Lcom/zte/feedback/UEImprove;

.field private mUeSwitch:Lcom/zte/heartyservice/common/datatype/P3Switch;

.field private netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

.field private qaView:Landroid/view/View;

.field private shareView:Landroid/view/View;

.field private ueTips:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/setting/InstructionActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/zte/heartyservice/setting/InstructionActivity;->ueTips:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/setting/InstructionActivity;)Lcom/zte/heartyservice/net/NetTrafficSettingDatas;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/zte/heartyservice/setting/InstructionActivity;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "v"

    .prologue
    const v9, 0x7f0a0555

    const v8, 0x7f0a00eb

    .line 98
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    .line 99
    .local v6, viewId:I
    packed-switch v6, :pswitch_data_0

    .line 173
    :goto_0
    :pswitch_0
    return-void

    .line 101
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 102
    .local v0, downloadBuilder:Landroid/app/AlertDialog$Builder;
    const v7, 0x7f0a054d

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 103
    const v7, 0x7f0a0553

    invoke-virtual {p0, v7}, Lcom/zte/heartyservice/setting/InstructionActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 104
    new-instance v7, Lcom/zte/heartyservice/setting/InstructionActivity$2;

    invoke-direct {v7, p0}, Lcom/zte/heartyservice/setting/InstructionActivity$2;-><init>(Lcom/zte/heartyservice/setting/InstructionActivity;)V

    invoke-virtual {v0, v9, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 114
    new-instance v7, Lcom/zte/heartyservice/setting/InstructionActivity$3;

    invoke-direct {v7, p0}, Lcom/zte/heartyservice/setting/InstructionActivity$3;-><init>(Lcom/zte/heartyservice/setting/InstructionActivity;)V

    invoke-virtual {v0, v8, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 123
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 124
    .local v1, downloadDialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 125
    invoke-static {v1}, Lcom/zte/heartyservice/common/ui/DialogActivity;->setCustomAlertDialogStyle(Landroid/app/AlertDialog;)V

    goto :goto_0

    .line 128
    .end local v0           #downloadBuilder:Landroid/app/AlertDialog$Builder;
    .end local v1           #downloadDialog:Landroid/app/AlertDialog;
    :pswitch_2
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 129
    .local v3, forumBuilder:Landroid/app/AlertDialog$Builder;
    const v7, 0x7f0a054f

    invoke-virtual {v3, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 130
    const v7, 0x7f0a0554

    invoke-virtual {p0, v7}, Lcom/zte/heartyservice/setting/InstructionActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 131
    new-instance v7, Lcom/zte/heartyservice/setting/InstructionActivity$4;

    invoke-direct {v7, p0}, Lcom/zte/heartyservice/setting/InstructionActivity$4;-><init>(Lcom/zte/heartyservice/setting/InstructionActivity;)V

    invoke-virtual {v3, v9, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 141
    new-instance v7, Lcom/zte/heartyservice/setting/InstructionActivity$5;

    invoke-direct {v7, p0}, Lcom/zte/heartyservice/setting/InstructionActivity$5;-><init>(Lcom/zte/heartyservice/setting/InstructionActivity;)V

    invoke-virtual {v3, v8, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 150
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    .line 151
    .local v4, forumDialog:Landroid/app/AlertDialog;
    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 152
    invoke-static {v4}, Lcom/zte/heartyservice/common/ui/DialogActivity;->setCustomAlertDialogStyle(Landroid/app/AlertDialog;)V

    goto :goto_0

    .line 157
    .end local v3           #forumBuilder:Landroid/app/AlertDialog$Builder;
    .end local v4           #forumDialog:Landroid/app/AlertDialog;
    :pswitch_3
    new-instance v2, Lcom/zte/feedback/sdk/FeedbackManager;

    invoke-direct {v2, p0}, Lcom/zte/feedback/sdk/FeedbackManager;-><init>(Landroid/content/Context;)V

    .line 158
    .local v2, feedbackManger:Lcom/zte/feedback/sdk/FeedbackManager;
    invoke-virtual {v2}, Lcom/zte/feedback/sdk/FeedbackManager;->feedback()V

    goto :goto_0

    .line 164
    .end local v2           #feedbackManger:Lcom/zte/feedback/sdk/FeedbackManager;
    :pswitch_4
    new-instance v5, Landroid/content/Intent;

    const-class v7, Lcom/zte/heartyservice/setting/NewPackageShare;

    invoke-direct {v5, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 165
    .local v5, intentShare:Landroid/content/Intent;
    invoke-virtual {p0, v5}, Lcom/zte/heartyservice/setting/InstructionActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 168
    .end local v5           #intentShare:Landroid/content/Intent;
    :pswitch_5
    new-instance v7, Landroid/content/Intent;

    const-class v8, Lcom/zte/heartyservice/setting/QAActivity;

    invoke-direct {v7, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v7}, Lcom/zte/heartyservice/setting/InstructionActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 99
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e0115
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v0, 0x7f030064

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/setting/InstructionActivity;->setContentView(I)V

    .line 47
    invoke-static {p0}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getInstance(Landroid/content/Context;)Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/setting/InstructionActivity;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    .line 49
    const v0, 0x7f0e0115

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/setting/InstructionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/setting/InstructionActivity;->downloadView:Landroid/view/View;

    .line 50
    const v0, 0x7f0e0118

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/setting/InstructionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/setting/InstructionActivity;->forumView:Landroid/view/View;

    .line 52
    const v0, 0x7f0e011b

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/setting/InstructionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/setting/InstructionActivity;->adviceView:Landroid/view/View;

    .line 53
    const v0, 0x7f0e011f

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/setting/InstructionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/setting/InstructionActivity;->shareView:Landroid/view/View;

    .line 54
    const v0, 0x7f0e011e

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/setting/InstructionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/setting/InstructionActivity;->qaView:Landroid/view/View;

    .line 56
    const v0, 0x7f0e0125

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/setting/InstructionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/setting/InstructionActivity;->ueTips:Landroid/widget/TextView;

    .line 57
    const v0, 0x7f0e0124

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/setting/InstructionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/common/datatype/P3Switch;

    iput-object v0, p0, Lcom/zte/heartyservice/setting/InstructionActivity;->mUeSwitch:Lcom/zte/heartyservice/common/datatype/P3Switch;

    .line 59
    iget-object v0, p0, Lcom/zte/heartyservice/setting/InstructionActivity;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    invoke-virtual {v0}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getUEImprove()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->isSecurityTestVersion()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/zte/heartyservice/setting/InstructionActivity;->mUeSwitch:Lcom/zte/heartyservice/common/datatype/P3Switch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setChecked(Z)V

    .line 62
    iget-object v0, p0, Lcom/zte/heartyservice/setting/InstructionActivity;->ueTips:Landroid/widget/TextView;

    const v1, 0x7f0a068b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 68
    :goto_0
    iget-object v0, p0, Lcom/zte/heartyservice/setting/InstructionActivity;->mUeSwitch:Lcom/zte/heartyservice/common/datatype/P3Switch;

    new-instance v1, Lcom/zte/heartyservice/setting/InstructionActivity$1;

    invoke-direct {v1, p0}, Lcom/zte/heartyservice/setting/InstructionActivity$1;-><init>(Lcom/zte/heartyservice/setting/InstructionActivity;)V

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 87
    iget-object v0, p0, Lcom/zte/heartyservice/setting/InstructionActivity;->downloadView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v0, p0, Lcom/zte/heartyservice/setting/InstructionActivity;->forumView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v0, p0, Lcom/zte/heartyservice/setting/InstructionActivity;->adviceView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v0, p0, Lcom/zte/heartyservice/setting/InstructionActivity;->shareView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v0, p0, Lcom/zte/heartyservice/setting/InstructionActivity;->qaView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/setting/InstructionActivity;->mUeSwitch:Lcom/zte/heartyservice/common/datatype/P3Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setChecked(Z)V

    .line 66
    iget-object v0, p0, Lcom/zte/heartyservice/setting/InstructionActivity;->ueTips:Landroid/widget/TextView;

    const v1, 0x7f0a068a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
