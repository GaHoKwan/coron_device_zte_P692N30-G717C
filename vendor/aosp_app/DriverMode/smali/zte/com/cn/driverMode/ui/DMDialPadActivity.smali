.class public Lzte/com/cn/driverMode/ui/DMDialPadActivity;
.super Lzte/com/cn/driverMode/ui/DMBaseActivity;


# instance fields
.field private A:Landroid/view/View$OnTouchListener;

.field private B:Landroid/view/View$OnClickListener;

.field protected a:Landroid/content/Context;

.field protected b:Landroid/view/View;

.field protected c:Landroid/view/View;

.field protected h:Landroid/widget/Button;

.field protected i:Landroid/widget/Button;

.field protected j:Landroid/widget/Button;

.field protected k:Landroid/widget/Button;

.field protected l:Landroid/widget/Button;

.field protected m:Landroid/widget/Button;

.field protected n:Landroid/widget/Button;

.field protected o:Landroid/widget/Button;

.field protected p:Landroid/widget/Button;

.field protected q:Landroid/widget/Button;

.field protected r:Landroid/widget/Button;

.field protected s:Landroid/widget/Button;

.field protected t:Landroid/widget/EditText;

.field protected u:Landroid/widget/ImageButton;

.field protected v:Landroid/view/View$OnClickListener;

.field protected w:Landroid/view/View$OnTouchListener;

.field private x:Landroid/widget/ListView;

.field private y:Landroid/widget/ImageButton;

.field private z:Lzte/com/cn/driverMode/ui/ek;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lzte/com/cn/driverMode/ui/DMBaseActivity;-><init>()V

    new-instance v0, Lzte/com/cn/driverMode/ui/y;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/ui/y;-><init>(Lzte/com/cn/driverMode/ui/DMDialPadActivity;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->A:Landroid/view/View$OnTouchListener;

    new-instance v0, Lzte/com/cn/driverMode/ui/z;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/ui/z;-><init>(Lzte/com/cn/driverMode/ui/DMDialPadActivity;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->B:Landroid/view/View$OnClickListener;

    new-instance v0, Lzte/com/cn/driverMode/ui/aa;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/ui/aa;-><init>(Lzte/com/cn/driverMode/ui/DMDialPadActivity;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->v:Landroid/view/View$OnClickListener;

    new-instance v0, Lzte/com/cn/driverMode/ui/ab;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/ui/ab;-><init>(Lzte/com/cn/driverMode/ui/DMDialPadActivity;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->w:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method protected static a(I)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    packed-switch p0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-object v0

    :pswitch_1
    const-string v0, "0"

    goto :goto_0

    :pswitch_2
    const-string v0, "1"

    goto :goto_0

    :pswitch_3
    const-string v0, "2"

    goto :goto_0

    :pswitch_4
    const-string v0, "3"

    goto :goto_0

    :pswitch_5
    const-string v0, "4"

    goto :goto_0

    :pswitch_6
    const-string v0, "5"

    goto :goto_0

    :pswitch_7
    const-string v0, "6"

    goto :goto_0

    :pswitch_8
    const-string v0, "7"

    goto :goto_0

    :pswitch_9
    const-string v0, "8"

    goto :goto_0

    :pswitch_a
    const-string v0, "9"

    goto :goto_0

    :pswitch_b
    const-string v0, "*"

    goto :goto_0

    :pswitch_c
    const-string v0, "#"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0b0026
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_1
        :pswitch_c
    .end packed-switch
.end method


# virtual methods
.method protected final a(IZ)V
    .locals 2

    const v0, 0x7f020018

    if-eqz p2, :cond_0

    const v0, 0x7f02000a

    :cond_0
    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->r:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->h:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->i:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->j:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    :pswitch_5
    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->k:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    :pswitch_6
    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->l:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    :pswitch_7
    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->m:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    :pswitch_8
    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->n:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    :pswitch_9
    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->o:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    :pswitch_a
    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->p:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    :pswitch_b
    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->q:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    :pswitch_c
    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->s:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0b0026
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_1
        :pswitch_c
    .end packed-switch
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "zte.com.cn.driverMode.Jump"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "UI"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "phonenumber"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method protected final a()Z
    .locals 6

    const/16 v5, 0x8

    const/4 v1, 0x0

    const/4 v0, 0x1

    const-string v2, "DMDialPadActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "recent:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->b:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "DMDialPadActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "dial:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->c:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->c:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-ne v2, v5, :cond_0

    const-string v2, "DMDialPadActivity"

    const-string v3, "rectent to edit"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->b:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->c:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->t:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->t:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->u:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected final b(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->t:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->t:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->t:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->t:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected final b()Z
    .locals 3

    const/16 v2, 0x8

    const/4 v0, 0x0

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->c:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->t:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->u:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->t:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lzte/com/cn/driverMode/ui/DMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->setContentView(I)V

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x20080

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->a:Landroid/content/Context;

    const v0, 0x7f0b0023

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->b:Landroid/view/View;

    const v0, 0x7f0b0025

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->x:Landroid/widget/ListView;

    new-instance v0, Lzte/com/cn/driverMode/ui/ek;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lzte/com/cn/driverMode/ui/ek;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->z:Lzte/com/cn/driverMode/ui/ek;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->x:Landroid/widget/ListView;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->z:Lzte/com/cn/driverMode/ui/ek;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->x:Landroid/widget/ListView;

    new-instance v1, Lzte/com/cn/driverMode/ui/ac;

    invoke-direct {v1, p0}, Lzte/com/cn/driverMode/ui/ac;-><init>(Lzte/com/cn/driverMode/ui/DMDialPadActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v0, 0x7f0b0020

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->c:Landroid/view/View;

    const v0, 0x7f0b0033

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->r:Landroid/widget/Button;

    const v0, 0x7f0b0026

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->h:Landroid/widget/Button;

    const v0, 0x7f0b0027

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->i:Landroid/widget/Button;

    const v0, 0x7f0b0028

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->j:Landroid/widget/Button;

    const v0, 0x7f0b002a

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->k:Landroid/widget/Button;

    const v0, 0x7f0b002b

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->l:Landroid/widget/Button;

    const v0, 0x7f0b002c

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->m:Landroid/widget/Button;

    const v0, 0x7f0b002e

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->n:Landroid/widget/Button;

    const v0, 0x7f0b002f

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->o:Landroid/widget/Button;

    const v0, 0x7f0b0030

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->p:Landroid/widget/Button;

    const v0, 0x7f0b0032

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->q:Landroid/widget/Button;

    const v0, 0x7f0b0034

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->s:Landroid/widget/Button;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->r:Landroid/widget/Button;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->w:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->h:Landroid/widget/Button;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->w:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->i:Landroid/widget/Button;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->w:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->j:Landroid/widget/Button;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->w:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->k:Landroid/widget/Button;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->w:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->l:Landroid/widget/Button;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->w:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->m:Landroid/widget/Button;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->w:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->n:Landroid/widget/Button;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->w:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->o:Landroid/widget/Button;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->w:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->p:Landroid/widget/Button;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->w:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->q:Landroid/widget/Button;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->w:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->s:Landroid/widget/Button;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->w:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f0b0021

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->t:Landroid/widget/EditText;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->t:Landroid/widget/EditText;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLines(I)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->t:Landroid/widget/EditText;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->A:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->t:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    const v0, 0x7f0b0022

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->u:Landroid/widget/ImageButton;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->u:Landroid/widget/ImageButton;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->B:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0035

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->y:Landroid/widget/ImageButton;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->y:Landroid/widget/ImageButton;

    new-instance v1, Lzte/com/cn/driverMode/ui/ad;

    invoke-direct {v1, p0}, Lzte/com/cn/driverMode/ui/ad;-><init>(Lzte/com/cn/driverMode/ui/DMDialPadActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const-string v0, "DMDialPadActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lzte/com/cn/driverMode/ui/DMBaseActivity;->onDestroy()V

    return-void
.end method
