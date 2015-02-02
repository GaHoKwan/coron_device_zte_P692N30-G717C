.class public Lcom/amoi/AmoiEngineerMode/util/ButtonHelper;
.super Ljava/lang/Object;
.source "ButtonHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hideAutoButtons(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 69
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/amoi/AmoiEngineerMode/util/ButtonHelper;->setAutoButtonsVisibility(Landroid/app/Activity;I)V

    .line 70
    return-void
.end method

.method public static initAndHideAutoButtons(Landroid/app/Activity;)V
    .locals 4
    .parameter "activity"

    .prologue
    const/4 v3, 0x4

    .line 34
    new-instance v1, Lcom/amoi/AmoiEngineerMode/auto/AutoButtonListener;

    invoke-direct {v1, p0}, Lcom/amoi/AmoiEngineerMode/auto/AutoButtonListener;-><init>(Landroid/app/Activity;)V

    .line 35
    .local v1, listener:Lcom/amoi/AmoiEngineerMode/auto/AutoButtonListener;
    const v2, 0x7f070012

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 36
    .local v0, button:Landroid/widget/Button;
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 39
    const v2, 0x7f070013

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 40
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 43
    const v2, 0x7f070014

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 44
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 46
    return-void
.end method

.method public static initAutoButtons(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 17
    new-instance v1, Lcom/amoi/AmoiEngineerMode/auto/AutoButtonListener;

    invoke-direct {v1, p0}, Lcom/amoi/AmoiEngineerMode/auto/AutoButtonListener;-><init>(Landroid/app/Activity;)V

    .line 18
    .local v1, listener:Lcom/amoi/AmoiEngineerMode/auto/AutoButtonListener;
    const v2, 0x7f070012

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 19
    .local v0, button:Landroid/widget/Button;
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    const v2, 0x7f070013

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 22
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    const v2, 0x7f070014

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 25
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    return-void
.end method

.method public static initOnlyExitButton(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    const/4 v2, 0x4

    .line 54
    const v1, 0x7f070012

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 55
    .local v0, button:Landroid/widget/Button;
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 56
    const v1, 0x7f070013

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 57
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 59
    const v1, 0x7f070014

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 60
    .restart local v0       #button:Landroid/widget/Button;
    new-instance v1, Lcom/amoi/AmoiEngineerMode/base/ExitButtonListener;

    invoke-direct {v1, p0}, Lcom/amoi/AmoiEngineerMode/base/ExitButtonListener;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    return-void
.end method

.method private static setAutoButtonsVisibility(Landroid/app/Activity;I)V
    .locals 2
    .parameter "activity"
    .parameter "visibility"

    .prologue
    .line 82
    const v1, 0x7f070012

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 83
    .local v0, button:Landroid/widget/Button;
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 84
    const v1, 0x7f070013

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 85
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 86
    const v1, 0x7f070014

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 87
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 88
    return-void
.end method

.method public static showAutoButtons(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/amoi/AmoiEngineerMode/util/ButtonHelper;->setAutoButtonsVisibility(Landroid/app/Activity;I)V

    .line 79
    return-void
.end method

.method public static showExitButton(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 96
    const v1, 0x7f070014

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 97
    .local v0, button:Landroid/widget/Button;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 98
    return-void
.end method
