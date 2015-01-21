.class public Lcom/zte/heartyservice/antieavesdrop/MainAntiEavesdropActivity;
.super Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;
.source "MainAntiEavesdropActivity.java"


# instance fields
.field private antiEavesdropBtn:Landroid/widget/Button;

.field private antiEavesdropTxt:Landroid/widget/TextView;

.field private antieavesdropImage:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/zte/heartyservice/antieavesdrop/MainAntiEavesdropActivity;->antiEavesdropTxt:Landroid/widget/TextView;

    .line 24
    iput-object v0, p0, Lcom/zte/heartyservice/antieavesdrop/MainAntiEavesdropActivity;->antieavesdropImage:Landroid/widget/ImageView;

    .line 25
    iput-object v0, p0, Lcom/zte/heartyservice/antieavesdrop/MainAntiEavesdropActivity;->antiEavesdropBtn:Landroid/widget/Button;

    return-void
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/antieavesdrop/MainAntiEavesdropActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/antieavesdrop/MainAntiEavesdropActivity;->setText(Z)V

    return-void
.end method

.method private setText(Z)V
    .locals 2
    .parameter "now_open"

    .prologue
    .line 84
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/zte/heartyservice/antieavesdrop/MainAntiEavesdropActivity;->antiEavesdropTxt:Landroid/widget/TextView;

    const v1, 0x7f0a03cd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 86
    iget-object v0, p0, Lcom/zte/heartyservice/antieavesdrop/MainAntiEavesdropActivity;->antiEavesdropBtn:Landroid/widget/Button;

    const v1, 0x7f0a03d0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 87
    iget-object v0, p0, Lcom/zte/heartyservice/antieavesdrop/MainAntiEavesdropActivity;->antieavesdropImage:Landroid/widget/ImageView;

    const v1, 0x7f0200b1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 93
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/antieavesdrop/MainAntiEavesdropActivity;->antiEavesdropTxt:Landroid/widget/TextView;

    const v1, 0x7f0a03ce

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 90
    iget-object v0, p0, Lcom/zte/heartyservice/antieavesdrop/MainAntiEavesdropActivity;->antiEavesdropBtn:Landroid/widget/Button;

    const v1, 0x7f0a03cf

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 91
    iget-object v0, p0, Lcom/zte/heartyservice/antieavesdrop/MainAntiEavesdropActivity;->antieavesdropImage:Landroid/widget/ImageView;

    const v1, 0x7f0200b0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v0, 0x7f0a03c9

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/antieavesdrop/MainAntiEavesdropActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/zte/heartyservice/antieavesdrop/MainAntiEavesdropActivity;->initActionBar(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 38
    const v0, 0x7f03000a

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/antieavesdrop/MainAntiEavesdropActivity;->setContentView(I)V

    .line 41
    const v0, 0x7f0e0025

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/antieavesdrop/MainAntiEavesdropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/antieavesdrop/MainAntiEavesdropActivity;->antiEavesdropTxt:Landroid/widget/TextView;

    .line 42
    const v0, 0x7f0e0026

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/antieavesdrop/MainAntiEavesdropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zte/heartyservice/antieavesdrop/MainAntiEavesdropActivity;->antiEavesdropBtn:Landroid/widget/Button;

    .line 43
    const v0, 0x7f0e0024

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/antieavesdrop/MainAntiEavesdropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zte/heartyservice/antieavesdrop/MainAntiEavesdropActivity;->antieavesdropImage:Landroid/widget/ImageView;

    .line 45
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->isAntieavesdropEnable()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/zte/heartyservice/antieavesdrop/MainAntiEavesdropActivity;->setText(Z)V

    .line 47
    iget-object v0, p0, Lcom/zte/heartyservice/antieavesdrop/MainAntiEavesdropActivity;->antiEavesdropBtn:Landroid/widget/Button;

    new-instance v1, Lcom/zte/heartyservice/antieavesdrop/MainAntiEavesdropActivity$1;

    invoke-direct {v1, p0}, Lcom/zte/heartyservice/antieavesdrop/MainAntiEavesdropActivity$1;-><init>(Lcom/zte/heartyservice/antieavesdrop/MainAntiEavesdropActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    return-void
.end method
