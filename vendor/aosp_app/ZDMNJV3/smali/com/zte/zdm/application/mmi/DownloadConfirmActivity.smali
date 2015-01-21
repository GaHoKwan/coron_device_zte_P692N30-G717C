.class public Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;
.super Landroid/app/Activity;

# interfaces
.implements Lcom/zte/zdm/a/j;


# static fields
.field public static final a:I = 0x8c

.field public static final b:I = 0xaa

.field public static final c:I = 0xb4

.field public static d:Ljava/lang/String;

.field private static w:Z


# instance fields
.field e:Landroid/content/DialogInterface$OnClickListener;

.field f:Landroid/content/DialogInterface$OnClickListener;

.field private g:Lcom/zte/zdm/application/a;

.field private h:Lcom/zte/zdm/application/b/g;

.field private i:Lcom/zte/zdm/application/a/a;

.field private j:Lcom/zte/zdm/application/activities/z;

.field private k:I

.field private l:Landroid/widget/RadioGroup;

.field private m:Landroid/widget/RadioButton;

.field private n:Landroid/widget/LinearLayout;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/Button;

.field private q:Landroid/widget/Button;

.field private r:Landroid/app/Dialog;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/widget/CheckBox;

.field private v:Landroid/widget/TextView;

.field private x:Ljava/lang/String;

.field private y:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ""

    sput-object v0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->d:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->w:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->k:I

    const-string v0, ""

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->x:Ljava/lang/String;

    new-instance v0, Lcom/zte/zdm/application/mmi/al;

    invoke-direct {v0, p0}, Lcom/zte/zdm/application/mmi/al;-><init>(Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;)V

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->y:Landroid/os/Handler;

    new-instance v0, Lcom/zte/zdm/application/mmi/bb;

    invoke-direct {v0, p0}, Lcom/zte/zdm/application/mmi/bb;-><init>(Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;)V

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->e:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/zte/zdm/application/mmi/bc;

    invoke-direct {v0, p0}, Lcom/zte/zdm/application/mmi/bc;-><init>(Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;)V

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->f:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;)Lcom/zte/zdm/application/b/g;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->h:Lcom/zte/zdm/application/b/g;

    return-object v0
.end method

.method private a(I)V
    .locals 4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->i:Lcom/zte/zdm/application/a/a;

    const-string v3, "dealy_download_time"

    invoke-virtual {v2, v3, v0, v1}, Lcom/zte/zdm/application/a/a;->b(Ljava/lang/String;J)V

    return-void
.end method

.method private a(J)V
    .locals 1

    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->arg1:I

    sparse-switch v0, :sswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unkown msg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :sswitch_0
    invoke-direct {p0}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->s()V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->t()V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->w()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x8c -> :sswitch_0
        0xaa -> :sswitch_1
        0xb4 -> :sswitch_2
    .end sparse-switch
.end method

.method static synthetic a(Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->a(J)V

    return-void
.end method

.method static synthetic a(Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->a(Landroid/os/Message;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method static synthetic a(Z)Z
    .locals 0

    sput-boolean p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->w:Z

    return p0
.end method

.method static synthetic b(Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;I)I
    .locals 0

    iput p1, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->k:I

    return p1
.end method

.method static synthetic b(Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->x:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b()Z
    .locals 1

    sget-boolean v0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->w:Z

    return v0
.end method

.method private c()V
    .locals 1

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->b()Lcom/zte/zdm/application/a;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->g:Lcom/zte/zdm/application/a;

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->g:Lcom/zte/zdm/application/a;

    invoke-virtual {v0}, Lcom/zte/zdm/application/a;->a()Lcom/zte/zdm/application/b/g;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->h:Lcom/zte/zdm/application/b/g;

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->h:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->h:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/a/d;->b()Lcom/zte/zdm/a/j;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->h:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/a/d;->b()Lcom/zte/zdm/a/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/zte/zdm/a/j;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    invoke-virtual {p0}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->i:Lcom/zte/zdm/application/a/a;

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->h:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->b()Lcom/zte/zdm/a/b;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/application/activities/z;

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->j:Lcom/zte/zdm/application/activities/z;

    return-void
.end method

.method static synthetic c(Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->u()V

    return-void
.end method

.method private d()V
    .locals 1

    const v0, 0x7f0d0013

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->n:Landroid/widget/LinearLayout;

    const v0, 0x7f0d0012

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->o:Landroid/widget/TextView;

    const v0, 0x7f0d0010

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->s:Landroid/widget/TextView;

    const v0, 0x7f0d000f

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->t:Landroid/widget/TextView;

    const v0, 0x7f0d0018

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->p:Landroid/widget/Button;

    const v0, 0x7f0d0019

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->q:Landroid/widget/Button;

    const v0, 0x7f0d0014

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->u:Landroid/widget/CheckBox;

    const v0, 0x7f0d0016

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->v:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic d(Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->p()V

    return-void
.end method

.method static synthetic e(Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->k()V

    return-void
.end method

.method static synthetic f(Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->n()V

    return-void
.end method

.method private g()V
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->h:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/a/d;->c()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->i:Lcom/zte/zdm/application/a/a;

    const-string v2, "resume_download"

    invoke-virtual {v0, v2, v1}, Lcom/zte/zdm/application/a/a;->b(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->n:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/zte/zdm/application/d/f;->d()Z

    move-result v3

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->i:Lcom/zte/zdm/application/a/a;

    const-string v4, "backup_click_tmp"

    invoke-virtual {v0, v4, v2}, Lcom/zte/zdm/application/a/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v4, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->i:Lcom/zte/zdm/application/a/a;

    const-string v5, "backup_click_tmp"

    invoke-virtual {v4, v5, v1}, Lcom/zte/zdm/application/a/a;->a(Ljava/lang/String;Z)Z

    move-result v4

    if-ne v0, v4, :cond_4

    move v0, v1

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isBackupClicked="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v0, :cond_2

    if-nez v3, :cond_3

    :cond_2
    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->x:Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->x:Ljava/lang/String;

    const-string v3, "2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    sput-boolean v1, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->w:Z

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->u:Landroid/widget/CheckBox;

    sget-boolean v1, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->w:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->i:Lcom/zte/zdm/application/a/a;

    const-string v1, "backup_click_tmp"

    sget-boolean v2, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->w:Z

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/a/a;->b(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->i:Lcom/zte/zdm/application/a/a;

    const-string v1, "backup_click"

    sget-boolean v2, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->w:Z

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/a/a;->b(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->i:Lcom/zte/zdm/application/a/a;

    const-string v3, "backup_click"

    invoke-virtual {v0, v3, v2}, Lcom/zte/zdm/application/a/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    sput-boolean v1, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->w:Z

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->u:Landroid/widget/CheckBox;

    sget-boolean v1, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->w:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method static synthetic g(Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->j()V

    return-void
.end method

.method static synthetic h(Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;)Lcom/zte/zdm/application/a/a;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->i:Lcom/zte/zdm/application/a/a;

    return-object v0
.end method

.method private h()V
    .locals 8

    const/16 v7, 0x14

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->h:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/a/d;->l()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->i:Lcom/zte/zdm/application/a/a;

    const-string v1, "update_releasenotes"

    sget-object v2, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->h:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/a/d;->k()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->h:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v1}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/a/d;->d()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Lcom/zte/zdm/application/mmi/DownloadActivity;->b(J)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->t:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090091

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_2

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->s:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090090

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/application/mmi/UIProjectActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    sget-object v1, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->o:Landroid/widget/TextView;

    const v1, 0x7f090016

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    const-string v0, ""

    const-string v0, "0"

    invoke-static {p0, v0}, Lcom/zte/zdm/application/b/r;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const v0, 0x7f09011b

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->o:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->o:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_2
    return-void

    :cond_2
    iget-object v0, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->s:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->h:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/a/d;->c()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->o:Landroid/widget/TextView;

    const v1, 0x7f0900b9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->o:Landroid/widget/TextView;

    sget-object v1, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f09011c

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->o:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->o:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method static synthetic i(Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;)I
    .locals 1

    iget v0, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->k:I

    return v0
.end method

.method private i()V
    .locals 4

    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iget-object v1, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->x:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->x:Ljava/lang/String;

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->p:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    new-instance v1, Lcom/zte/zdm/application/mmi/av;

    invoke-direct {v1, p0}, Lcom/zte/zdm/application/mmi/av;-><init>(Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;)V

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_1
    iget-object v1, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->p:Landroid/widget/Button;

    new-instance v2, Lcom/zte/zdm/application/mmi/ax;

    invoke-direct {v2, p0, v0}, Lcom/zte/zdm/application/mmi/ax;-><init>(Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;Ljava/util/Timer;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->q:Landroid/widget/Button;

    new-instance v1, Lcom/zte/zdm/application/mmi/ay;

    invoke-direct {v1, p0}, Lcom/zte/zdm/application/mmi/ay;-><init>(Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->v:Landroid/widget/TextView;

    new-instance v1, Lcom/zte/zdm/application/mmi/az;

    invoke-direct {v1, p0}, Lcom/zte/zdm/application/mmi/az;-><init>(Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->u:Landroid/widget/CheckBox;

    new-instance v1, Lcom/zte/zdm/application/mmi/ba;

    invoke-direct {v1, p0}, Lcom/zte/zdm/application/mmi/ba;-><init>(Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method private j()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/zte/zdm/application/mmi/LearnMoreBackupActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic j(Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->x()V

    return-void
.end method

.method private k()V
    .locals 3

    const-string v0, "android.action.delayDownLoad"

    invoke-static {v0}, Lcom/zte/zdm/application/autoupdate/b;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/zte/zdm/application/b/ga;->a()Lcom/zte/zdm/application/b/ga;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->i:Lcom/zte/zdm/application/a/a;

    invoke-virtual {v0, v1}, Lcom/zte/zdm/application/b/ga;->a(Lcom/zte/zdm/application/a/a;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->h:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v2}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/zdm/a/d;->c()I

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->x()V

    invoke-virtual {p0}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->i:Lcom/zte/zdm/application/a/a;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/zte/zdm/application/b/ga;->a(Lcom/zte/zdm/application/a/a;I)V

    new-instance v0, Lcom/zte/zdm/application/mmi/aa;

    invoke-direct {v0, p0}, Lcom/zte/zdm/application/mmi/aa;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/zdm/application/mmi/aa;->a(Z)Lcom/zte/zdm/application/mmi/aa;

    const v1, 0x7f090144

    invoke-virtual {v0, v1}, Lcom/zte/zdm/application/mmi/aa;->b(I)Lcom/zte/zdm/application/mmi/aa;

    const v1, 0x7f030005

    invoke-virtual {v0, v1}, Lcom/zte/zdm/application/mmi/aa;->c(I)Lcom/zte/zdm/application/mmi/aa;

    const v1, 0x7f09003a

    iget-object v2, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->e:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/mmi/aa;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/zte/zdm/application/mmi/aa;

    const v1, 0x7f090018

    iget-object v2, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->f:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/mmi/aa;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/zte/zdm/application/mmi/aa;

    invoke-virtual {v0}, Lcom/zte/zdm/application/mmi/aa;->a()Lcom/zte/zdm/application/mmi/z;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->r:Landroid/app/Dialog;

    invoke-direct {p0}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->l()V

    invoke-direct {p0}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->m()V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->r:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method private l()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->r:Landroid/app/Dialog;

    const v1, 0x7f0d002c

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->l:Landroid/widget/RadioGroup;

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->r:Landroid/app/Dialog;

    const v1, 0x7f0d002d

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->m:Landroid/widget/RadioButton;

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->m:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iput v2, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->k:I

    return-void
.end method

.method private m()V
    .locals 2

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->l:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/zte/zdm/application/mmi/bd;

    invoke-direct {v1, p0}, Lcom/zte/zdm/application/mmi/bd;-><init>(Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-void
.end method

.method private n()V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "android.action.delayDownLoad"

    invoke-static {v0}, Lcom/zte/zdm/application/autoupdate/b;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->i:Lcom/zte/zdm/application/a/a;

    const-string v1, "start_download"

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/a/a;->b(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/application/c/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/c/a;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->w:Z

    if-ne v0, v2, :cond_0

    invoke-direct {p0}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->o()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->p()V

    goto :goto_0
.end method

.method private o()V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    new-instance v1, Lcom/zte/zdm/application/mmi/am;

    invoke-direct {v1, p0}, Lcom/zte/zdm/application/mmi/am;-><init>(Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;)V

    new-instance v5, Lcom/zte/zdm/application/mmi/an;

    invoke-direct {v5, p0}, Lcom/zte/zdm/application/mmi/an;-><init>(Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;)V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->j:Lcom/zte/zdm/application/activities/z;

    invoke-virtual {p0}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09016b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v9, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f090104

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {p0}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f090018

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Runnable;

    aput-object v1, v4, v7

    aput-object v5, v4, v8

    const/4 v1, 0x0

    aput-object v1, v4, v9

    const-wide/16 v5, 0x0

    invoke-virtual {p0}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v7, 0x7f0900d4

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lcom/zte/zdm/application/activities/z;->a(Lcom/zte/zdm/a/j;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Runnable;JLjava/lang/String;)V

    return-void
.end method

.method private p()V
    .locals 1

    invoke-virtual {p0}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/application/b/cn;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Download pushed and wifi is connected"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->u()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Download pushed and wifi is not connected"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->r()V

    goto :goto_0
.end method

.method private q()V
    .locals 4

    invoke-virtual {p0}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/application/services/c;->a(Landroid/content/Context;)Lcom/zte/zdm/application/services/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/application/services/c;->e()V

    sget-boolean v1, Lcom/zte/zdm/application/activities/b;->c:Z

    if-nez v1, :cond_1

    const-string v1, "controller acceptContinueSession()"

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/zte/zdm/application/b/cn;->g(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->i:Lcom/zte/zdm/application/a/a;

    const-string v2, "useChooseConnectionType"

    const-string v3, "wifi"

    invoke-virtual {v1, v2, v3}, Lcom/zte/zdm/application/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/zte/zdm/c/a;->a(Landroid/content/Context;)Lcom/zte/zdm/c/a;

    move-result-object v1

    const-string v2, "download_network"

    const-string v3, "wifi"

    invoke-virtual {v1, v0, v2, v3}, Lcom/zte/zdm/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/zte/zdm/application/activities/b;->c:Z

    return-void

    :cond_0
    iget-object v1, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->i:Lcom/zte/zdm/application/a/a;

    const-string v2, "useChooseConnectionType"

    const-string v3, "mobile"

    invoke-virtual {v1, v2, v3}, Lcom/zte/zdm/application/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/zte/zdm/c/a;->a(Landroid/content/Context;)Lcom/zte/zdm/c/a;

    move-result-object v1

    const-string v2, "download_network"

    const-string v3, "mobile"

    invoke-virtual {v1, v0, v2, v3}, Lcom/zte/zdm/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->h:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/a/d;->m()V

    goto :goto_0
.end method

.method private r()V
    .locals 10

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v0, "========showDownloadWithNetworkChecking====="

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    new-instance v0, Lcom/zte/zdm/application/mmi/ao;

    invoke-direct {v0, p0}, Lcom/zte/zdm/application/mmi/ao;-><init>(Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;)V

    iget-object v2, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->i:Lcom/zte/zdm/application/a/a;

    const-string v3, "no_remind_under_network"

    invoke-virtual {v2, v3}, Lcom/zte/zdm/application/a/a;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :cond_0
    const v2, 0x7f090116

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-array v3, v7, [Ljava/lang/String;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f09009c

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v5

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f090018

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v6

    new-array v4, v7, [Ljava/lang/Runnable;

    aput-object v0, v4, v5

    new-instance v0, Lcom/zte/zdm/application/mmi/ap;

    invoke-direct {v0, p0}, Lcom/zte/zdm/application/mmi/ap;-><init>(Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;)V

    aput-object v0, v4, v6

    new-instance v8, Lcom/zte/zdm/application/mmi/aq;

    invoke-direct {v8, p0}, Lcom/zte/zdm/application/mmi/aq;-><init>(Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;)V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->j:Lcom/zte/zdm/application/activities/z;

    const v2, 0x7f0900ff

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v5, 0x0

    const v7, 0x7f090100

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    invoke-virtual/range {v0 .. v9}, Lcom/zte/zdm/application/activities/z;->a(Lcom/zte/zdm/a/j;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Runnable;JLjava/lang/String;Landroid/widget/CompoundButton$OnCheckedChangeListener;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private s()V
    .locals 13

    const v12, 0x7f090082

    const v11, 0x7f090018

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/zte/zdm/application/mmi/ar;

    invoke-direct {v1, p0}, Lcom/zte/zdm/application/mmi/ar;-><init>(Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;)V

    new-instance v5, Lcom/zte/zdm/application/mmi/as;

    invoke-direct {v5, p0, v0}, Lcom/zte/zdm/application/mmi/as;-><init>(Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;Landroid/content/Context;)V

    new-instance v6, Lcom/zte/zdm/application/mmi/at;

    invoke-direct {v6, p0}, Lcom/zte/zdm/application/mmi/at;-><init>(Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;)V

    invoke-static {p0}, Lcom/zte/zdm/application/b/cn;->g(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090101

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090104

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0}, Lcom/zte/zdm/application/b/cn;->f(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    new-array v3, v10, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v8

    invoke-virtual {p0}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v9

    new-array v4, v10, [Ljava/lang/Runnable;

    aput-object v1, v4, v8

    aput-object v6, v4, v9

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->j:Lcom/zte/zdm/application/activities/z;

    const-wide/16 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lcom/zte/zdm/application/activities/z;->a(Lcom/zte/zdm/a/j;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Runnable;JLjava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/zte/zdm/application/d/f;->e()Z

    move-result v0

    if-nez v0, :cond_2

    new-array v0, v9, [Ljava/lang/String;

    const-string v3, "CMCC"

    aput-object v3, v0, v8

    invoke-static {v0}, Lcom/zte/zdm/application/b;->c([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f090102

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v10, [Ljava/lang/String;

    invoke-virtual {p0, v12}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v8

    invoke-virtual {p0, v11}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v9

    new-array v4, v10, [Ljava/lang/Runnable;

    aput-object v1, v4, v8

    aput-object v6, v4, v9

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->j:Lcom/zte/zdm/application/activities/z;

    const-wide/16 v5, 0x0

    const v1, 0x7f090104

    invoke-virtual {p0, v1}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lcom/zte/zdm/application/activities/z;->a(Lcom/zte/zdm/a/j;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Runnable;JLjava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    new-array v0, v9, [Ljava/lang/String;

    const-string v3, "Orange"

    aput-object v3, v0, v8

    invoke-static {v0}, Lcom/zte/zdm/application/b;->b([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->h:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/a/d;->d()I

    move-result v0

    const/high16 v3, 0x140

    if-le v0, v3, :cond_4

    invoke-virtual {p0}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f090102

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v10, [Ljava/lang/String;

    invoke-virtual {p0, v12}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v8

    invoke-virtual {p0, v11}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v9

    new-array v4, v10, [Ljava/lang/Runnable;

    aput-object v1, v4, v8

    aput-object v6, v4, v9

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->j:Lcom/zte/zdm/application/activities/z;

    const-wide/16 v5, 0x0

    const v1, 0x7f090104

    invoke-virtual {p0, v1}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lcom/zte/zdm/application/activities/z;->a(Lcom/zte/zdm/a/j;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Runnable;JLjava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f09009c

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v8

    invoke-virtual {p0}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v9

    invoke-virtual {p0}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v10

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/Runnable;

    aput-object v5, v4, v8

    aput-object v1, v4, v9

    aput-object v6, v4, v10

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->j:Lcom/zte/zdm/application/activities/z;

    const-wide/16 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lcom/zte/zdm/application/activities/z;->a(Lcom/zte/zdm/a/j;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Runnable;JLjava/lang/String;)V

    goto/16 :goto_0
.end method

.method private t()V
    .locals 8

    const/4 v4, 0x1

    const/4 v1, 0x0

    const v0, 0x7f090103

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/String;

    const v0, 0x7f09003a

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    new-array v4, v4, [Ljava/lang/Runnable;

    new-instance v0, Lcom/zte/zdm/application/mmi/au;

    invoke-direct {v0, p0}, Lcom/zte/zdm/application/mmi/au;-><init>(Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;)V

    aput-object v0, v4, v1

    const v0, 0x7f090042

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->j:Lcom/zte/zdm/application/activities/z;

    const-wide/16 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lcom/zte/zdm/application/activities/z;->a(Lcom/zte/zdm/a/j;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Runnable;JLjava/lang/String;)V

    return-void
.end method

.method private u()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->q()V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->i:Lcom/zte/zdm/application/a/a;

    const-string v1, "running_activity"

    invoke-virtual {v0, v1, v4}, Lcom/zte/zdm/application/a/a;->c(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->i:Lcom/zte/zdm/application/a/a;

    const-string v1, "backup_click_tmp"

    invoke-virtual {v0, v1}, Lcom/zte/zdm/application/a/a;->e(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/application/c/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/c/a;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/zte/zdm/application/mmi/DownloadActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-boolean v2, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->w:Z

    if-ne v2, v4, :cond_0

    if-eqz v0, :cond_0

    const-string v0, "backupORrestore"

    const-string v2, "backup"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    sput-boolean v3, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->w:Z

    invoke-static {}, Lcom/zte/zdm/application/b/ga;->a()Lcom/zte/zdm/application/b/ga;

    move-result-object v0

    iget-object v2, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->i:Lcom/zte/zdm/application/a/a;

    invoke-virtual {v0, v2, v3}, Lcom/zte/zdm/application/b/ga;->a(Lcom/zte/zdm/application/a/a;I)V

    invoke-virtual {p0, v1}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->finish()V

    return-void

    :cond_0
    const-string v0, "backupORrestore"

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private v()V
    .locals 3

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->h:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zte/zdm/a/d;->g(Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->h:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/zdm/a/d;->d(Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->h:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->E()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->h:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/zte/zdm/application/b/ga;->a()Lcom/zte/zdm/application/b/ga;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->i:Lcom/zte/zdm/application/a/a;

    invoke-virtual {v0, v1}, Lcom/zte/zdm/application/b/ga;->a(Lcom/zte/zdm/application/a/a;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    iget-object v2, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->h:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v2}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/zdm/a/d;->c()I

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->x()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "when onstop is dddownload phase ,so show notification"

    invoke-static {p0, v2}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->i:Lcom/zte/zdm/application/a/a;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/zte/zdm/application/b/ga;->a(Lcom/zte/zdm/application/a/a;I)V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->j:Lcom/zte/zdm/application/activities/z;

    invoke-static {v0}, Lcom/zte/zdm/application/b/co;->a(Lcom/zte/zdm/application/activities/b;)Lcom/zte/zdm/application/b/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/co;->d()V

    goto :goto_0
.end method

.method private w()V
    .locals 2

    invoke-virtual {p0}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090118

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->a()V

    return-void
.end method

.method private x()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "android.action.delayDownLoad"

    invoke-static {v0}, Lcom/zte/zdm/application/autoupdate/b;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/zte/zdm/application/b/ga;->a()Lcom/zte/zdm/application/b/ga;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->i:Lcom/zte/zdm/application/a/a;

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/b/ga;->a(Lcom/zte/zdm/application/a/a;I)V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->i:Lcom/zte/zdm/application/a/a;

    const-string v1, "backup_click"

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/a/a;->b(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->h:Lcom/zte/zdm/application/b/g;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zte/zdm/application/b/g;->f(Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->h:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->C()V

    invoke-static {p0}, Lcom/zte/zdm/application/d/a/c;->a(Landroid/content/Context;)Lcom/zte/zdm/application/d/a/c;

    move-result-object v0

    const-string v1, "CANCEL"

    invoke-virtual {v0, v1}, Lcom/zte/zdm/application/d/a/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->i:Lcom/zte/zdm/application/a/a;

    const-string v1, "running_activity"

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/a/a;->c(Ljava/lang/String;I)V

    const v0, 0x7f090166

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 2

    instance-of v0, p1, Landroid/os/Message;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ooooooooooooooonUpdateScreenData msg.arg1 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Landroid/os/Message;

    iget v0, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->y:Landroid/os/Handler;

    check-cast p1, Landroid/os/Message;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public e()Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "onCreate"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/zte/zdm/application/b/r;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->x:Ljava/lang/String;

    invoke-direct {p0}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->c()V

    invoke-direct {p0}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->d()V

    invoke-direct {p0}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->g()V

    invoke-direct {p0}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->h()V

    invoke-direct {p0}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->i()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    sparse-switch p1, :sswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyDown keyCode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    move v0, v1

    :goto_0
    return v0

    :sswitch_0
    const-string v1, "onKeyDown keyCode=KEYCODE_BACK"

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->v()V

    goto :goto_0

    :sswitch_1
    const-string v0, "onKeyDown keyCode=KEYCODE_HOME"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :sswitch_2
    const-string v1, "onKeyDown keyCode=KEYCODE_MENU"

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x4 -> :sswitch_0
        0x52 -> :sswitch_2
    .end sparse-switch
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->h:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zte/zdm/a/d;->a(Lcom/zte/zdm/a/j;)V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->h:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/zdm/a/d;->g(Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->h:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/a/d;->u()Lcom/zte/zdm/a/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/zte/zdm/a/e;->g()V

    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 2

    const-string v0, "onStop"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->h:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v1}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/a/d;->b()Lcom/zte/zdm/a/j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-static {p0}, Lcom/zte/zdm/application/d/d;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->v()V

    invoke-virtual {p0}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->finish()V

    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->finish()V

    goto :goto_0
.end method
