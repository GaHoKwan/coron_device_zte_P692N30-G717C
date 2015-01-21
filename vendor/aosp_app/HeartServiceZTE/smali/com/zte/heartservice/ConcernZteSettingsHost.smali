.class public Lcom/zte/heartservice/ConcernZteSettingsHost;
.super Landroid/app/TabActivity;
.source "ConcernZteSettingsHost.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ConcernZteSettingsHost"


# instance fields
.field private mTabHost:Landroid/widget/TabHost;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const v5, 0x7f08019a

    const v4, 0x7f080158

    const v3, 0x7f080157

    .line 18
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    invoke-virtual {p0}, Lcom/zte/heartservice/ConcernZteSettingsHost;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 20
    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Lcom/zte/heartservice/ConcernZteSettingsHost;->setContentView(I)V

    .line 22
    invoke-virtual {p0}, Lcom/zte/heartservice/ConcernZteSettingsHost;->getTabHost()Landroid/widget/TabHost;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartservice/ConcernZteSettingsHost;->mTabHost:Landroid/widget/TabHost;

    .line 24
    iget-object v0, p0, Lcom/zte/heartservice/ConcernZteSettingsHost;->mTabHost:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/zte/heartservice/ConcernZteSettingsHost;->mTabHost:Landroid/widget/TabHost;

    .line 25
    invoke-virtual {p0, v3}, Lcom/zte/heartservice/ConcernZteSettingsHost;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    .line 26
    invoke-virtual {p0, v3}, Lcom/zte/heartservice/ConcernZteSettingsHost;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    .line 28
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 30
    const-string v3, "com.zte.heartservice.ZteTelInfoSettings"

    .line 29
    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 27
    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 32
    iget-object v0, p0, Lcom/zte/heartservice/ConcernZteSettingsHost;->mTabHost:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/zte/heartservice/ConcernZteSettingsHost;->mTabHost:Landroid/widget/TabHost;

    .line 33
    invoke-virtual {p0, v4}, Lcom/zte/heartservice/ConcernZteSettingsHost;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    .line 34
    invoke-virtual {p0, v4}, Lcom/zte/heartservice/ConcernZteSettingsHost;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    .line 36
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 38
    const-string v3, "com.zte.heartservice.ZteServiceCentersSettings"

    .line 37
    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 35
    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 40
    iget-object v0, p0, Lcom/zte/heartservice/ConcernZteSettingsHost;->mTabHost:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/zte/heartservice/ConcernZteSettingsHost;->mTabHost:Landroid/widget/TabHost;

    .line 41
    invoke-virtual {p0, v5}, Lcom/zte/heartservice/ConcernZteSettingsHost;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    .line 42
    invoke-virtual {p0, v5}, Lcom/zte/heartservice/ConcernZteSettingsHost;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    .line 44
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 46
    const-string v3, "com.zte.heartservice.ZteOthersInfoSettings"

    .line 45
    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 43
    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 47
    return-void
.end method
