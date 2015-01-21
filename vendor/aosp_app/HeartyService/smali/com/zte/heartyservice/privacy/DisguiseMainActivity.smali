.class public Lcom/zte/heartyservice/privacy/DisguiseMainActivity;
.super Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;
.source "DisguiseMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "DisguiseMainActivity"


# instance fields
.field private mCallRecordView:Landroid/view/View;

.field private mContactView:Landroid/view/View;

.field private mPasswordProtectView:Landroid/view/View;

.field private mSmsView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;-><init>()V

    return-void
.end method

.method private eventInit()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 31
    const v0, 0x7f0e016d

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/privacy/DisguiseMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 32
    const v0, 0x7f0e0170

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/privacy/DisguiseMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 33
    const v0, 0x7f0e0176

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/privacy/DisguiseMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 34
    const v0, 0x7f0e0173

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/privacy/DisguiseMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/DisguiseMainActivity;->mPasswordProtectView:Landroid/view/View;

    .line 35
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/DisguiseMainActivity;->mPasswordProtectView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    const v0, 0x7f0e0168

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/privacy/DisguiseMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/DisguiseMainActivity;->mSmsView:Landroid/view/View;

    .line 37
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/DisguiseMainActivity;->mSmsView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    const v0, 0x7f0e016a

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/privacy/DisguiseMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/DisguiseMainActivity;->mContactView:Landroid/view/View;

    .line 39
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/DisguiseMainActivity;->mContactView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    const v0, 0x7f0e016b

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/privacy/DisguiseMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/DisguiseMainActivity;->mCallRecordView:Landroid/view/View;

    .line 41
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/DisguiseMainActivity;->mCallRecordView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 47
    .local v1, viewId:I
    const/4 v0, 0x0

    .line 48
    .local v0, intent:Landroid/content/Intent;
    sparse-switch v1, :sswitch_data_0

    .line 75
    :goto_0
    invoke-static {p0, v0}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->startActivitySafe(Landroid/content/Context;Landroid/content/Intent;)V

    .line 76
    return-void

    .line 51
    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-class v2, Lcom/zte/heartyservice/privacy/DisguisePasswordProtectorActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 52
    .restart local v0       #intent:Landroid/content/Intent;
    goto :goto_0

    .line 55
    :sswitch_1
    const-string v2, "DisguiseMainActivity"

    const-string v3, "sms"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-class v2, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 57
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "select_tab"

    sget-object v3, Lcom/zte/heartyservice/privacy/ContactType;->FROM_SMS:Lcom/zte/heartyservice/privacy/ContactType;

    invoke-virtual {v3}, Lcom/zte/heartyservice/privacy/ContactType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 61
    :sswitch_2
    const-string v2, "DisguiseMainActivity"

    const-string v3, "contact"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-class v2, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 63
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "select_tab"

    sget-object v3, Lcom/zte/heartyservice/privacy/ContactType;->FROM_PHONE_SIM:Lcom/zte/heartyservice/privacy/ContactType;

    invoke-virtual {v3}, Lcom/zte/heartyservice/privacy/ContactType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 67
    :sswitch_3
    const-string v2, "DisguiseMainActivity"

    const-string v3, "call_record"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-class v2, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 69
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "select_tab"

    sget-object v3, Lcom/zte/heartyservice/privacy/ContactType;->FROM_CALLLOG:Lcom/zte/heartyservice/privacy/ContactType;

    invoke-virtual {v3}, Lcom/zte/heartyservice/privacy/ContactType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 48
    :sswitch_data_0
    .sparse-switch
        0x7f0e0168 -> :sswitch_1
        0x7f0e016a -> :sswitch_2
        0x7f0e016b -> :sswitch_3
        0x7f0e0173 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const v0, 0x7f030078

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/privacy/DisguiseMainActivity;->setContentView(I)V

    .line 26
    const v0, 0x7f0a02fb

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/privacy/DisguiseMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/zte/heartyservice/privacy/DisguiseMainActivity;->initActionBar(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 27
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/DisguiseMainActivity;->eventInit()V

    .line 28
    return-void
.end method
