.class public Lcom/ctc/epush/MainActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/RadioButton;

.field private c:Landroid/widget/RadioButton;

.field private d:Landroid/widget/RadioButton;

.field private e:Landroid/widget/RadioButton;

.field private f:Landroid/widget/RadioGroup;

.field private g:Lcom/ctc/c/n;

.field private h:Landroid/view/View$OnClickListener;

.field private i:Landroid/widget/RadioGroup$OnCheckedChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/ctc/epush/i;

    invoke-direct {v0, p0}, Lcom/ctc/epush/i;-><init>(Lcom/ctc/epush/MainActivity;)V

    iput-object v0, p0, Lcom/ctc/epush/MainActivity;->h:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/ctc/epush/j;

    invoke-direct {v0, p0}, Lcom/ctc/epush/j;-><init>(Lcom/ctc/epush/MainActivity;)V

    iput-object v0, p0, Lcom/ctc/epush/MainActivity;->i:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    return-void
.end method

.method static synthetic a(Lcom/ctc/epush/MainActivity;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/ctc/epush/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ctc/epush/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ctc/epush/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/ctc/epush/k;

    invoke-direct {v2, p0}, Lcom/ctc/epush/k;-><init>(Lcom/ctc/epush/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method static synthetic b(Lcom/ctc/epush/MainActivity;)Landroid/widget/RadioButton;
    .locals 1

    iget-object v0, p0, Lcom/ctc/epush/MainActivity;->d:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic c(Lcom/ctc/epush/MainActivity;)Lcom/ctc/c/n;
    .locals 1

    iget-object v0, p0, Lcom/ctc/epush/MainActivity;->g:Lcom/ctc/c/n;

    return-object v0
.end method

.method static synthetic d(Lcom/ctc/epush/MainActivity;)Landroid/widget/RadioButton;
    .locals 1

    iget-object v0, p0, Lcom/ctc/epush/MainActivity;->b:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic e(Lcom/ctc/epush/MainActivity;)Landroid/widget/RadioButton;
    .locals 1

    iget-object v0, p0, Lcom/ctc/epush/MainActivity;->e:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic f(Lcom/ctc/epush/MainActivity;)Landroid/widget/RadioButton;
    .locals 1

    iget-object v0, p0, Lcom/ctc/epush/MainActivity;->c:Landroid/widget/RadioButton;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 8

    const/16 v7, 0x3c

    const/4 v1, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/ctc/epush/MainActivity;->g:Lcom/ctc/c/n;

    const-string v2, "PUSH_NEXT"

    new-array v3, v1, [Ljava/lang/String;

    const-string v4, "data"

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Lcom/ctc/c/n;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "data"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/ctc/System/PushAPPService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/ctc/epush/MainActivity;->g:Lcom/ctc/c/n;

    const-string v3, "PushAPPService_TriggerType"

    const-string v4, "Data"

    invoke-virtual {v2, v3, v4}, Lcom/ctc/c/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v5, v0, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v2, 0x18

    invoke-static {v2}, Lcom/ctc/c/h;->a(I)I

    move-result v2

    const/16 v3, 0xb

    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    invoke-static {v7}, Lcom/ctc/c/h;->a(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xd

    invoke-static {v7}, Lcom/ctc/c/h;->a(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {p0}, Lcom/ctc/b/a;->c(Landroid/content/Context;)J

    move-result-wide v4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "Reset AlarmManager...Initialization time:"

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v2, v3, v7}, Lcom/ctc/c/h;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/ctc/epush/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v4

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v3}, Lcom/ctc/epush/MainActivity;->requestWindowFeature(I)Z

    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Lcom/ctc/epush/MainActivity;->setContentView(I)V

    new-instance v0, Lcom/ctc/c/n;

    invoke-direct {v0, p0}, Lcom/ctc/c/n;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ctc/epush/MainActivity;->g:Lcom/ctc/c/n;

    const v0, 0x7f08001d

    invoke-virtual {p0, v0}, Lcom/ctc/epush/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/ctc/epush/MainActivity;->f:Landroid/widget/RadioGroup;

    const v0, 0x7f08001e

    invoke-virtual {p0, v0}, Lcom/ctc/epush/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/ctc/epush/MainActivity;->d:Landroid/widget/RadioButton;

    const v0, 0x7f08001f

    invoke-virtual {p0, v0}, Lcom/ctc/epush/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/ctc/epush/MainActivity;->b:Landroid/widget/RadioButton;

    const v0, 0x7f080020

    invoke-virtual {p0, v0}, Lcom/ctc/epush/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/ctc/epush/MainActivity;->e:Landroid/widget/RadioButton;

    const v0, 0x7f080021

    invoke-virtual {p0, v0}, Lcom/ctc/epush/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/ctc/epush/MainActivity;->c:Landroid/widget/RadioButton;

    iget-object v0, p0, Lcom/ctc/epush/MainActivity;->g:Lcom/ctc/c/n;

    const-string v1, "update_push_value"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/ctc/c/n;->b(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/ctc/epush/MainActivity;->f:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/ctc/epush/MainActivity;->i:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    const v0, 0x7f080022

    invoke-virtual {p0, v0}, Lcom/ctc/epush/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ctc/epush/MainActivity;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ctc/epush/MainActivity;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ctc/epush/MainActivity;->h:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/ctc/epush/MainActivity;->d:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/ctc/epush/MainActivity;->b:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/ctc/epush/MainActivity;->e:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/ctc/epush/MainActivity;->c:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method
