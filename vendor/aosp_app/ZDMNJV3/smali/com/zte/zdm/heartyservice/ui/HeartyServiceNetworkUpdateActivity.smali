.class public Lcom/zte/zdm/heartyservice/ui/HeartyServiceNetworkUpdateActivity;
.super Landroid/app/Activity;


# static fields
.field private static final a:Ljava/lang/String; = "HeartyService"


# instance fields
.field private b:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03000d

    invoke-virtual {p0, v0}, Lcom/zte/zdm/heartyservice/ui/HeartyServiceNetworkUpdateActivity;->setContentView(I)V

    const v0, 0x7f0d0058

    invoke-virtual {p0, v0}, Lcom/zte/zdm/heartyservice/ui/HeartyServiceNetworkUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lcom/zte/zdm/heartyservice/core/a;->a()Lcom/zte/zdm/heartyservice/core/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/heartyservice/core/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0d005f

    invoke-virtual {p0, v0}, Lcom/zte/zdm/heartyservice/ui/HeartyServiceNetworkUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zte/zdm/heartyservice/ui/HeartyServiceNetworkUpdateActivity;->b:Landroid/widget/Button;

    iget-object v0, p0, Lcom/zte/zdm/heartyservice/ui/HeartyServiceNetworkUpdateActivity;->b:Landroid/widget/Button;

    new-instance v1, Lcom/zte/zdm/heartyservice/ui/g;

    invoke-direct {v1, p0}, Lcom/zte/zdm/heartyservice/ui/g;-><init>(Lcom/zte/zdm/heartyservice/ui/HeartyServiceNetworkUpdateActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const-string v0, "HeartyService"

    const-string v1, "HeartyServiceNetworkUpdateActivity->onKeyDown: back key pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/zte/zdm/heartyservice/ui/HeartyServiceNetworkUpdateActivity;->finish()V

    invoke-static {}, Lcom/zte/zdm/heartyservice/core/a;->a()Lcom/zte/zdm/heartyservice/core/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/heartyservice/core/a;->d()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
