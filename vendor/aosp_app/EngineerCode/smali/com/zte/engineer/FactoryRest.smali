.class public Lcom/zte/engineer/FactoryRest;
.super Landroid/app/Activity;
.source "FactoryRest.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Emode.FactoryRest"


# instance fields
.field chkboxExSdErase:Landroid/widget/CheckBox;

.field chkboxInSdErase:Landroid/widget/CheckBox;

.field private mFinalClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 37
    new-instance v0, Lcom/zte/engineer/FactoryRest$1;

    invoke-direct {v0, p0}, Lcom/zte/engineer/FactoryRest$1;-><init>(Lcom/zte/engineer/FactoryRest;)V

    iput-object v0, p0, Lcom/zte/engineer/FactoryRest;->mFinalClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private establishFinalConfirmationState()V
    .locals 2

    .prologue
    .line 62
    const v1, 0x7f08002a

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 64
    .local v0, mFinalButton:Landroid/widget/Button;
    iget-object v1, p0, Lcom/zte/engineer/FactoryRest;->mFinalClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 21
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const v0, 0x7f03000a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 24
    invoke-direct {p0}, Lcom/zte/engineer/FactoryRest;->establishFinalConfirmationState()V

    .line 26
    const v0, 0x7f080028

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/zte/engineer/FactoryRest;->chkboxInSdErase:Landroid/widget/CheckBox;

    .line 27
    const v0, 0x7f080029

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/zte/engineer/FactoryRest;->chkboxExSdErase:Landroid/widget/CheckBox;

    .line 28
    iget-object v0, p0, Lcom/zte/engineer/FactoryRest;->chkboxInSdErase:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 29
    const-string v0, "Emode.FactoryRest"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    return-void
.end method
