.class public Lcom/zte/zdm/heartyservice/ui/HeartyServiceMainActivity;
.super Landroid/app/Activity;


# static fields
.field private static final a:Ljava/lang/String; = "HeartyService"


# instance fields
.field private b:Ljava/util/Timer;

.field private c:Landroid/widget/Button;

.field private d:Lcom/zte/zdm/heartyservice/ui/InflateAnimation;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    const v0, 0x7f0d0061

    invoke-virtual {p0, v0}, Lcom/zte/zdm/heartyservice/ui/HeartyServiceMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zte/zdm/heartyservice/ui/HeartyServiceMainActivity;->c:Landroid/widget/Button;

    iget-object v0, p0, Lcom/zte/zdm/heartyservice/ui/HeartyServiceMainActivity;->c:Landroid/widget/Button;

    new-instance v1, Lcom/zte/zdm/heartyservice/ui/c;

    invoke-direct {v1, p0}, Lcom/zte/zdm/heartyservice/ui/c;-><init>(Lcom/zte/zdm/heartyservice/ui/HeartyServiceMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private b()V
    .locals 4

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/heartyservice/ui/HeartyServiceMainActivity;->b:Ljava/util/Timer;

    new-instance v0, Lcom/zte/zdm/heartyservice/ui/d;

    invoke-direct {v0, p0}, Lcom/zte/zdm/heartyservice/ui/d;-><init>(Lcom/zte/zdm/heartyservice/ui/HeartyServiceMainActivity;)V

    iget-object v1, p0, Lcom/zte/zdm/heartyservice/ui/HeartyServiceMainActivity;->b:Ljava/util/Timer;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "HeartyService"

    const-string v1, "HeartyServiceMainActivity->onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f03000b

    invoke-virtual {p0, v0}, Lcom/zte/zdm/heartyservice/ui/HeartyServiceMainActivity;->setContentView(I)V

    const v0, 0x7f0d0060

    invoke-virtual {p0, v0}, Lcom/zte/zdm/heartyservice/ui/HeartyServiceMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/heartyservice/ui/InflateAnimation;

    iput-object v0, p0, Lcom/zte/zdm/heartyservice/ui/HeartyServiceMainActivity;->d:Lcom/zte/zdm/heartyservice/ui/InflateAnimation;

    const v0, 0x7f0d0058

    invoke-virtual {p0, v0}, Lcom/zte/zdm/heartyservice/ui/HeartyServiceMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lcom/zte/zdm/heartyservice/core/a;->a()Lcom/zte/zdm/heartyservice/core/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/heartyservice/core/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/zte/zdm/heartyservice/ui/HeartyServiceMainActivity;->a()V

    invoke-direct {p0}, Lcom/zte/zdm/heartyservice/ui/HeartyServiceMainActivity;->b()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/zte/zdm/heartyservice/ui/HeartyServiceMainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0c

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f0d00ba

    if-ne v2, v3, :cond_0

    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/zte/zdm/heartyservice/ui/e;

    invoke-direct {v2, p0}, Lcom/zte/zdm/heartyservice/ui/e;-><init>(Lcom/zte/zdm/heartyservice/ui/HeartyServiceMainActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const-string v0, "HeartyService"

    const-string v1, "HeartyServiceMainActivity->onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/zte/zdm/heartyservice/ui/HeartyServiceMainActivity;->b:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/heartyservice/ui/HeartyServiceMainActivity;->b:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    const-string v0, "HeartyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HeartyServiceMainActivity->onOptionsItemSelected: item.getItemId() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return v3

    :pswitch_0
    const-string v0, "HeartyService"

    const-string v1, "onOptionsItemSelected: menu_check_new_from_server"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/zte/zdm/heartyservice/core/a;->a()Lcom/zte/zdm/heartyservice/core/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zte/zdm/heartyservice/core/a;->a(Landroid/app/Activity;)V

    goto :goto_0

    :pswitch_1
    const-string v0, "HeartyService"

    const-string v1, "onOptionsItemSelected: menu_status"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/zte/zdm/heartyservice/ui/p;->a()Lcom/zte/zdm/heartyservice/ui/p;

    move-result-object v0

    sget-object v1, Lcom/zte/zdm/heartyservice/ui/q;->d:Lcom/zte/zdm/heartyservice/ui/q;

    invoke-virtual {v0, p0, v1}, Lcom/zte/zdm/heartyservice/ui/p;->a(Landroid/content/Context;Lcom/zte/zdm/heartyservice/ui/q;)V

    goto :goto_0

    :pswitch_2
    const-string v0, "HeartyService"

    const-string v1, "onOptionsItemSelected: menu_update_settings"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/zte/zdm/heartyservice/ui/p;->a()Lcom/zte/zdm/heartyservice/ui/p;

    move-result-object v0

    sget-object v1, Lcom/zte/zdm/heartyservice/ui/q;->e:Lcom/zte/zdm/heartyservice/ui/q;

    invoke-virtual {v0, p0, v1}, Lcom/zte/zdm/heartyservice/ui/p;->a(Landroid/content/Context;Lcom/zte/zdm/heartyservice/ui/q;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0d00ba
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const-string v0, "HeartyService"

    const-string v1, "HeartyServiceMainActivity->onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/zte/zdm/heartyservice/ui/HeartyServiceMainActivity;->d:Lcom/zte/zdm/heartyservice/ui/InflateAnimation;

    invoke-virtual {v0}, Lcom/zte/zdm/heartyservice/ui/InflateAnimation;->a()V

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const-string v0, "HeartyService"

    const-string v1, "HeartyServiceMainActivity->onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/zte/zdm/heartyservice/ui/HeartyServiceMainActivity;->d:Lcom/zte/zdm/heartyservice/ui/InflateAnimation;

    invoke-virtual {v0}, Lcom/zte/zdm/heartyservice/ui/InflateAnimation;->b()V

    return-void
.end method
