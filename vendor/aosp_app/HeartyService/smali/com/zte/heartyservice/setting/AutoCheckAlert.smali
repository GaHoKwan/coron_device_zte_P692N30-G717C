.class public Lcom/zte/heartyservice/setting/AutoCheckAlert;
.super Landroid/app/Activity;
.source "AutoCheckAlert.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CleanAppAlert"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/zte/heartyservice/setting/AutoCheckAlert;->finish()V

    .line 65
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/zte/heartyservice/setting/AutoCheckAlert;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/zte/heartyservice/setting/AutoCheckAlert;->finish()V

    .line 71
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const v4, 0x7f030090

    invoke-virtual {p0, v4}, Lcom/zte/heartyservice/setting/AutoCheckAlert;->setContentView(I)V

    .line 27
    const v4, 0x7f0e0005

    invoke-virtual {p0, v4}, Lcom/zte/heartyservice/setting/AutoCheckAlert;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 28
    .local v3, title:Landroid/widget/TextView;
    const v4, 0x7f0e0192

    invoke-virtual {p0, v4}, Lcom/zte/heartyservice/setting/AutoCheckAlert;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 29
    .local v1, msg:Landroid/widget/TextView;
    const v4, 0x7f0a058b

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 30
    const v4, 0x7f0a000f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 31
    const v4, 0x7f0e00a3

    invoke-virtual {p0, v4}, Lcom/zte/heartyservice/setting/AutoCheckAlert;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 32
    .local v0, cancleBtn:Landroid/widget/Button;
    const v4, 0x7f0e00a4

    invoke-virtual {p0, v4}, Lcom/zte/heartyservice/setting/AutoCheckAlert;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 33
    .local v2, sureBtn:Landroid/widget/Button;
    const v4, 0x7f0a0174

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    .line 34
    const v4, 0x7f0a0173

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(I)V

    .line 35
    new-instance v4, Lcom/zte/heartyservice/setting/AutoCheckAlert$1;

    invoke-direct {v4, p0}, Lcom/zte/heartyservice/setting/AutoCheckAlert$1;-><init>(Lcom/zte/heartyservice/setting/AutoCheckAlert;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    new-instance v4, Lcom/zte/heartyservice/setting/AutoCheckAlert$2;

    invoke-direct {v4, p0}, Lcom/zte/heartyservice/setting/AutoCheckAlert$2;-><init>(Lcom/zte/heartyservice/setting/AutoCheckAlert;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/zte/heartyservice/setting/AutoCheckAlert;->setFinishOnTouchOutside(Z)V

    .line 60
    return-void
.end method
