.class public Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;
.super Ljava/lang/Object;
.source "ChooseCycleDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/setting/ChooseCycleDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private cancel_btn:Landroid/widget/Button;

.field private choose:I

.field listener:Landroid/view/View$OnClickListener;

.field private sure_btn:Landroid/widget/Button;

.field private textview1:Landroid/widget/TextView;

.field private textview2:Landroid/widget/TextView;

.field private textview3:Landroid/widget/TextView;

.field private textview4:Landroid/widget/TextView;

.field private textview5:Landroid/widget/TextView;

.field private textview6:Landroid/widget/TextView;

.field private textview7:Landroid/widget/TextView;

.field private title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance v0, Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder$3;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder$3;-><init>(Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;)V

    iput-object v0, p0, Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;->listener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;->getChoose()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;->textview1:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;->textview2:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;->textview3:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;->textview4:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;->textview5:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;->textview6:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;->textview7:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$802(Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput p1, p0, Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;->choose:I

    return p1
.end method

.method private getChoose()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;->choose:I

    return v0
.end method


# virtual methods
.method public create(Landroid/content/Context;ILcom/zte/heartyservice/setting/ChooseCycleDialog$writeChooseCB;)Lcom/zte/heartyservice/setting/ChooseCycleDialog;
    .locals 7
    .parameter "context"
    .parameter "choose"
    .parameter "cb"

    .prologue
    const v6, 0x7f080046

    .line 46
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 49
    .local v1, inflater:Landroid/view/LayoutInflater;
    new-instance v0, Lcom/zte/heartyservice/setting/ChooseCycleDialog;

    invoke-direct {v0, p1}, Lcom/zte/heartyservice/setting/ChooseCycleDialog;-><init>(Landroid/content/Context;)V

    .line 50
    .local v0, dialog:Lcom/zte/heartyservice/setting/ChooseCycleDialog;
    const v3, 0x7f030024

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 51
    .local v2, layout:Landroid/view/View;
    invoke-virtual {v0, v2}, Lcom/zte/heartyservice/setting/ChooseCycleDialog;->setView(Landroid/view/View;)V

    .line 53
    const v3, 0x7f0a03de

    invoke-virtual {v0, v3}, Lcom/zte/heartyservice/setting/ChooseCycleDialog;->setTitle(I)V

    .line 54
    const/4 v3, -0x1

    const v4, 0x7f0a00ea

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder$1;

    invoke-direct {v5, p0, p3}, Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder$1;-><init>(Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;Lcom/zte/heartyservice/setting/ChooseCycleDialog$writeChooseCB;)V

    invoke-virtual {v0, v3, v4, v5}, Lcom/zte/heartyservice/setting/ChooseCycleDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 62
    const/4 v3, -0x2

    const v4, 0x7f0a00eb

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder$2;

    invoke-direct {v5, p0}, Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder$2;-><init>(Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;)V

    invoke-virtual {v0, v3, v4, v5}, Lcom/zte/heartyservice/setting/ChooseCycleDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 70
    const v3, 0x7f0e0078

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;->textview1:Landroid/widget/TextView;

    .line 71
    const v3, 0x7f0e0079

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;->textview2:Landroid/widget/TextView;

    .line 72
    const v3, 0x7f0e007a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;->textview3:Landroid/widget/TextView;

    .line 73
    const v3, 0x7f0e007b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;->textview4:Landroid/widget/TextView;

    .line 74
    const v3, 0x7f0e007c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;->textview5:Landroid/widget/TextView;

    .line 75
    const v3, 0x7f0e007d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;->textview6:Landroid/widget/TextView;

    .line 76
    const v3, 0x7f0e007e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;->textview7:Landroid/widget/TextView;

    .line 77
    iget-object v3, p0, Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;->textview1:Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 78
    iget-object v3, p0, Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;->textview2:Landroid/widget/TextView;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 79
    iget-object v3, p0, Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;->textview3:Landroid/widget/TextView;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 80
    iget-object v3, p0, Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;->textview4:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 81
    iget-object v3, p0, Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;->textview5:Landroid/widget/TextView;

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 82
    iget-object v3, p0, Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;->textview6:Landroid/widget/TextView;

    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 83
    iget-object v3, p0, Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;->textview7:Landroid/widget/TextView;

    const/4 v4, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 84
    iget-object v3, p0, Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;->textview1:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v3, p0, Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;->textview2:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v3, p0, Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;->textview3:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v3, p0, Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;->textview4:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v3, p0, Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;->textview5:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v3, p0, Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;->textview6:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v3, p0, Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;->textview7:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iput p2, p0, Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;->choose:I

    .line 92
    packed-switch p2, :pswitch_data_0

    .line 122
    :goto_0
    return-object v0

    .line 94
    :pswitch_0
    iget-object v3, p0, Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;->textview1:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 98
    :pswitch_1
    iget-object v3, p0, Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;->textview2:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 102
    :pswitch_2
    iget-object v3, p0, Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;->textview3:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 106
    :pswitch_3
    iget-object v3, p0, Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;->textview4:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 110
    :pswitch_4
    iget-object v3, p0, Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;->textview5:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 114
    :pswitch_5
    iget-object v3, p0, Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;->textview6:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 118
    :pswitch_6
    iget-object v3, p0, Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;->textview7:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 92
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
