.class public Lcom/zte/zdm/heartyservice/ui/HeartyServiceMsgActivity;
.super Landroid/app/Activity;


# static fields
.field public static final a:Ljava/lang/String; = "show_network_label"

.field private static final b:Ljava/lang/String; = "HeartyService"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x0

    const v0, 0x7f0d0058

    invoke-virtual {p0, v0}, Lcom/zte/zdm/heartyservice/ui/HeartyServiceMsgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lcom/zte/zdm/heartyservice/core/a;->a()Lcom/zte/zdm/heartyservice/core/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/heartyservice/core/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0d005b

    invoke-virtual {p0, v0}, Lcom/zte/zdm/heartyservice/ui/HeartyServiceMsgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lcom/zte/zdm/heartyservice/core/a;->a()Lcom/zte/zdm/heartyservice/core/a;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/zte/zdm/heartyservice/core/a;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    const v0, 0x7f0d005c

    invoke-virtual {p0, v0}, Lcom/zte/zdm/heartyservice/ui/HeartyServiceMsgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/zte/zdm/heartyservice/ui/HeartyServiceMsgActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "show_network_label"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void

    :cond_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "HeartyService"

    const-string v1, "HeartyServiceMsgActivity->onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f03000c

    invoke-virtual {p0, v0}, Lcom/zte/zdm/heartyservice/ui/HeartyServiceMsgActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/zte/zdm/heartyservice/ui/HeartyServiceMsgActivity;->a()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/zte/zdm/heartyservice/ui/HeartyServiceMsgActivity;->getMenuInflater()Landroid/view/MenuInflater;

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

    new-instance v2, Lcom/zte/zdm/heartyservice/ui/f;

    invoke-direct {v2, p0}, Lcom/zte/zdm/heartyservice/ui/f;-><init>(Lcom/zte/zdm/heartyservice/ui/HeartyServiceMsgActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    const-string v1, "HeartyService"

    const-string v2, "onOptionsItemSelected: menu_check_new_from_server"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/zte/zdm/heartyservice/core/a;->a()Lcom/zte/zdm/heartyservice/core/a;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/zte/zdm/heartyservice/core/a;->a(Landroid/app/Activity;)V

    goto :goto_0

    :pswitch_1
    const-string v1, "HeartyService"

    const-string v2, "onOptionsItemSelected: menu_status"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/zte/zdm/heartyservice/ui/p;->a()Lcom/zte/zdm/heartyservice/ui/p;

    move-result-object v1

    sget-object v2, Lcom/zte/zdm/heartyservice/ui/q;->d:Lcom/zte/zdm/heartyservice/ui/q;

    invoke-virtual {v1, p0, v2}, Lcom/zte/zdm/heartyservice/ui/p;->a(Landroid/content/Context;Lcom/zte/zdm/heartyservice/ui/q;)V

    goto :goto_0

    :pswitch_2
    const-string v1, "HeartyService"

    const-string v2, "onOptionsItemSelected: menu_update_settings"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/zte/zdm/heartyservice/ui/p;->a()Lcom/zte/zdm/heartyservice/ui/p;

    move-result-object v1

    sget-object v2, Lcom/zte/zdm/heartyservice/ui/q;->e:Lcom/zte/zdm/heartyservice/ui/q;

    invoke-virtual {v1, p0, v2}, Lcom/zte/zdm/heartyservice/ui/p;->a(Landroid/content/Context;Lcom/zte/zdm/heartyservice/ui/q;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0d00ba
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
