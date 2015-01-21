.class public Lcom/zte/retrieve/utils/dialogcustom/DialogUpdate;
.super Ljava/lang/Object;
.source "DialogUpdate.java"


# instance fields
.field private dialog:Landroid/app/Dialog;

.field private dialogLayout:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .parameter "context"
    .parameter "title"
    .parameter "message"
    .parameter "cancleAble"

    .prologue
    const/4 v2, 0x0

    const v4, 0x7f09000d

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v2, p0, Lcom/zte/retrieve/utils/dialogcustom/DialogUpdate;->dialogLayout:Landroid/view/View;

    .line 28
    iput-object v2, p0, Lcom/zte/retrieve/utils/dialogcustom/DialogUpdate;->dialog:Landroid/app/Dialog;

    .line 32
    new-instance v2, Landroid/app/Dialog;

    const v3, 0x7f070007

    invoke-direct {v2, p1, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/zte/retrieve/utils/dialogcustom/DialogUpdate;->dialog:Landroid/app/Dialog;

    .line 33
    iget-object v2, p0, Lcom/zte/retrieve/utils/dialogcustom/DialogUpdate;->dialog:Landroid/app/Dialog;

    const v3, 0x7f030007

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setContentView(I)V

    .line 34
    iget-object v2, p0, Lcom/zte/retrieve/utils/dialogcustom/DialogUpdate;->dialog:Landroid/app/Dialog;

    invoke-virtual {v2, p4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 36
    iget-object v2, p0, Lcom/zte/retrieve/utils/dialogcustom/DialogUpdate;->dialog:Landroid/app/Dialog;

    const v3, 0x7f090019

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 37
    .local v0, dialogLayout:Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/zte/retrieve/utils/dialogcustom/DialogUpdate;->setDialogLayout(Landroid/view/View;)V

    .line 39
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 43
    .local v1, res:Landroid/content/res/Resources;
    invoke-static {}, Lcom/zte/retrieve/utils/config/VersionConfig;->getInstance()Lcom/zte/retrieve/utils/config/VersionConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/retrieve/utils/config/VersionConfig;->isMifavor2_2()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 44
    const v2, 0x7f09000c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f02001d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 45
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f05000d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 46
    const v2, 0x7f090018

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 49
    :cond_0
    invoke-direct {p0, p1}, Lcom/zte/retrieve/utils/dialogcustom/DialogUpdate;->adapteWindowSize(Landroid/content/Context;)V

    .line 50
    return-void
.end method

.method private adapteWindowSize(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 70
    invoke-static {p1}, Lcom/zte/retrieve/utils/CommonFunctions;->adapterWindowSize(Landroid/content/Context;)Landroid/widget/RadioGroup$LayoutParams;

    move-result-object v0

    .line 71
    .local v0, p:Landroid/widget/RadioGroup$LayoutParams;
    iget-object v1, p0, Lcom/zte/retrieve/utils/dialogcustom/DialogUpdate;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    iget v2, v0, Landroid/widget/RadioGroup$LayoutParams;->width:I

    iget-object v3, p0, Lcom/zte/retrieve/utils/dialogcustom/DialogUpdate;->dialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setLayout(II)V

    .line 72
    iget-object v1, p0, Lcom/zte/retrieve/utils/dialogcustom/DialogUpdate;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 73
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/zte/retrieve/utils/dialogcustom/DialogUpdate;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 66
    return-void
.end method

.method public getDialogLayout()Landroid/view/View;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/zte/retrieve/utils/dialogcustom/DialogUpdate;->dialogLayout:Landroid/view/View;

    return-object v0
.end method

.method public setDialogLayout(Landroid/view/View;)V
    .locals 0
    .parameter "dialogLayout"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/zte/retrieve/utils/dialogcustom/DialogUpdate;->dialogLayout:Landroid/view/View;

    .line 58
    return-void
.end method
