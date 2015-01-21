.class public Lcom/zte/retrieve/utils/dialogcustom/DialogListView;
.super Ljava/lang/Object;
.source "DialogListView.java"


# instance fields
.field private applist:Landroid/widget/ListView;

.field private dialog:Landroid/app/Dialog;

.field private dialogLayout:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 6
    .parameter "context"
    .parameter "title"
    .parameter "listArray"
    .parameter "cancleAble"

    .prologue
    const v5, 0x7f090015

    const/4 v3, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v3, p0, Lcom/zte/retrieve/utils/dialogcustom/DialogListView;->dialogLayout:Landroid/view/View;

    .line 31
    iput-object v3, p0, Lcom/zte/retrieve/utils/dialogcustom/DialogListView;->dialog:Landroid/app/Dialog;

    .line 32
    iput-object v3, p0, Lcom/zte/retrieve/utils/dialogcustom/DialogListView;->applist:Landroid/widget/ListView;

    .line 36
    new-instance v3, Landroid/app/Dialog;

    const v4, 0x7f070007

    invoke-direct {v3, p1, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/zte/retrieve/utils/dialogcustom/DialogListView;->dialog:Landroid/app/Dialog;

    .line 37
    iget-object v3, p0, Lcom/zte/retrieve/utils/dialogcustom/DialogListView;->dialog:Landroid/app/Dialog;

    const v4, 0x7f030005

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setContentView(I)V

    .line 38
    iget-object v3, p0, Lcom/zte/retrieve/utils/dialogcustom/DialogListView;->dialog:Landroid/app/Dialog;

    invoke-virtual {v3, p4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 40
    iget-object v3, p0, Lcom/zte/retrieve/utils/dialogcustom/DialogListView;->dialog:Landroid/app/Dialog;

    const v4, 0x7f090013

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 41
    .local v1, dialogLayout:Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/zte/retrieve/utils/dialogcustom/DialogListView;->setDialogLayout(Landroid/view/View;)V

    .line 43
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    const v3, 0x7f090016

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/zte/retrieve/utils/dialogcustom/DialogListView;->applist:Landroid/widget/ListView;

    .line 46
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v3, 0x1090003

    invoke-direct {v0, p1, v3, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 49
    .local v0, arrayadapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/zte/retrieve/utils/dialogcustom/DialogListView;->applist:Landroid/widget/ListView;

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 52
    .local v2, res:Landroid/content/res/Resources;
    invoke-static {}, Lcom/zte/retrieve/utils/config/VersionConfig;->getInstance()Lcom/zte/retrieve/utils/config/VersionConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zte/retrieve/utils/config/VersionConfig;->isMifavor2_2()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 53
    const v3, 0x7f090014

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 54
    const v4, 0x7f02001d

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 55
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f05000d

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 56
    const v3, 0x7f09000e

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 58
    :cond_0
    invoke-direct {p0, p1}, Lcom/zte/retrieve/utils/dialogcustom/DialogListView;->adapteWindowSize(Landroid/content/Context;)V

    .line 59
    return-void
.end method

.method private adapteWindowSize(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 79
    invoke-static {p1}, Lcom/zte/retrieve/utils/CommonFunctions;->adapterWindowSize(Landroid/content/Context;)Landroid/widget/RadioGroup$LayoutParams;

    move-result-object v0

    .line 80
    .local v0, p:Landroid/widget/RadioGroup$LayoutParams;
    iget-object v1, p0, Lcom/zte/retrieve/utils/dialogcustom/DialogListView;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    iget v2, v0, Landroid/widget/RadioGroup$LayoutParams;->width:I

    iget-object v3, p0, Lcom/zte/retrieve/utils/dialogcustom/DialogListView;->dialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setLayout(II)V

    .line 81
    iget-object v1, p0, Lcom/zte/retrieve/utils/dialogcustom/DialogListView;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 82
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/zte/retrieve/utils/dialogcustom/DialogListView;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 75
    return-void
.end method

.method public getApplist()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/zte/retrieve/utils/dialogcustom/DialogListView;->applist:Landroid/widget/ListView;

    return-object v0
.end method

.method public getDialogLayout()Landroid/view/View;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/zte/retrieve/utils/dialogcustom/DialogListView;->dialogLayout:Landroid/view/View;

    return-object v0
.end method

.method public setApplist(Landroid/widget/ListView;)V
    .locals 0
    .parameter "applist"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/zte/retrieve/utils/dialogcustom/DialogListView;->applist:Landroid/widget/ListView;

    .line 90
    return-void
.end method

.method public setDialogLayout(Landroid/view/View;)V
    .locals 0
    .parameter "dialogLayout"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/zte/retrieve/utils/dialogcustom/DialogListView;->dialogLayout:Landroid/view/View;

    .line 67
    return-void
.end method
