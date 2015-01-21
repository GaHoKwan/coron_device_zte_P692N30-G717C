.class public Lcom/zte/engineer/DeviceInfo;
.super Landroid/app/Activity;
.source "DeviceInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private init()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 19
    const v4, 0x7f060064

    invoke-virtual {p0, v4}, Landroid/app/Activity;->setTitle(I)V

    .line 20
    const v4, 0x7f030010

    invoke-virtual {p0, v4}, Landroid/app/Activity;->setContentView(I)V

    .line 22
    const v4, 0x7f08003c

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 23
    .local v1, basebandView:Landroid/widget/TextView;
    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    .line 24
    .local v0, basebandVersion:Ljava/lang/String;
    const v4, 0x7f060065

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    const v4, 0x7f08003d

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 27
    .local v3, buildVersionView:Landroid/widget/TextView;
    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    .line 28
    .local v2, buildVersion:Ljava/lang/String;
    const v4, 0x7f060066

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 12
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    invoke-direct {p0}, Lcom/zte/engineer/DeviceInfo;->init()V

    .line 15
    return-void
.end method
