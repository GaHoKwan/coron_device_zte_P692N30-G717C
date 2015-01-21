.class public Lcom/zte/zdm/application/mmi/UIProjectActivity;
.super Landroid/app/Activity;

# interfaces
.implements Lcom/zte/zdm/a/j;


# static fields
.field private static A:Lcom/zte/zdm/application/mmi/aa; = null

.field public static final a:Ljava/lang/String; = "android.settings.SETTINGS"

.field public static final b:I = 0xe

.field public static final c:I = 0x44c

.field public static final d:I = 0x451

.field public static final e:I = 0x456

.field public static final f:I = 0x64

.field public static final g:I = 0x68

.field public static final h:I = 0x78

.field public static final i:I = 0x69

.field public static final j:I = 0x6e

.field public static final k:I = 0x82

.field public static final l:I = 0x8c

.field public static final m:I = 0x96

.field public static final n:I = 0xa0

.field public static final o:I = 0xaa

.field public static final p:I = 0xb4

.field public static final q:Ljava/lang/String; = "KEY_TITLE"

.field public static final r:Ljava/lang/String; = "KEY_CONTENT"


# instance fields
.field private B:Landroid/widget/TextView;

.field private C:Landroid/widget/Button;

.field private D:Landroid/os/Handler;

.field private E:Landroid/view/View$OnClickListener;

.field private s:Lcom/zte/zdm/application/a;

.field private t:Lcom/zte/zdm/application/b/g;

.field private u:Lcom/zte/zdm/application/a/a;

.field private v:Lcom/zte/zdm/application/activities/z;

.field private w:Landroid/widget/Button;

.field private x:Landroid/widget/Button;

.field private y:Landroid/widget/Button;

.field private z:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/zte/zdm/application/mmi/UIProjectActivity;->A:Lcom/zte/zdm/application/mmi/aa;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/zte/zdm/application/mmi/bt;

    invoke-direct {v0, p0}, Lcom/zte/zdm/application/mmi/bt;-><init>(Lcom/zte/zdm/application/mmi/UIProjectActivity;)V

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/UIProjectActivity;->D:Landroid/os/Handler;

    new-instance v0, Lcom/zte/zdm/application/mmi/bu;

    invoke-direct {v0, p0}, Lcom/zte/zdm/application/mmi/bu;-><init>(Lcom/zte/zdm/application/mmi/UIProjectActivity;)V

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/UIProjectActivity;->E:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/zte/zdm/application/mmi/UIProjectActivity;)Lcom/zte/zdm/application/a/a;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/UIProjectActivity;->u:Lcom/zte/zdm/application/a/a;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v2, -0x1

    const-string v0, "123"

    const-string v1, "V"

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v1, " "

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private a(I)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "=========reloadFace=========recoverto = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    sget-object v0, Lcom/zte/zdm/application/mmi/UIProjectActivity;->A:Lcom/zte/zdm/application/mmi/aa;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/zte/zdm/application/mmi/UIProjectActivity;->A:Lcom/zte/zdm/application/mmi/aa;

    invoke-virtual {v0}, Lcom/zte/zdm/application/mmi/aa;->d()V

    :cond_1
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/mmi/UIProjectActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    new-instance v1, Lcom/zte/zdm/application/mmi/af;

    invoke-direct {v1, p0}, Lcom/zte/zdm/application/mmi/af;-><init>(Landroid/content/Context;)V

    const v2, 0x7f030017

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/zte/zdm/application/mmi/af;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/mmi/UIProjectActivity;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/zte/zdm/application/mmi/UIProjectActivity;->i()V

    invoke-direct {p0}, Lcom/zte/zdm/application/mmi/UIProjectActivity;->h()V

    invoke-direct {p0}, Lcom/zte/zdm/application/mmi/UIProjectActivity;->k()V

    invoke-direct {p0}, Lcom/zte/zdm/application/mmi/UIProjectActivity;->c()V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/UIProjectActivity;->t:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zte/zdm/a/d;->a(Lcom/zte/zdm/a/j;)V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/UIProjectActivity;->u:Lcom/zte/zdm/application/a/a;

    const-string v1, "no_space"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/a/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/zte/zdm/application/mmi/UIProjectActivity;->j()V

    goto :goto_0

    :sswitch_2
    invoke-static {}, Lcom/zte/zdm/application/mmi/UIProjectActivity;->b()V

    new-instance v0, Lcom/zte/zdm/application/mmi/aa;

    invoke-direct {v0, p0}, Lcom/zte/zdm/application/mmi/aa;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/zte/zdm/application/mmi/UIProjectActivity;->A:Lcom/zte/zdm/application/mmi/aa;

    sget-object v0, Lcom/zte/zdm/application/mmi/UIProjectActivity;->A:Lcom/zte/zdm/application/mmi/aa;

    invoke-virtual {v0}, Lcom/zte/zdm/application/mmi/aa;->c()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x44c -> :sswitch_1
        0x451 -> :sswitch_2
        0x456 -> :sswitch_0
    .end sparse-switch
.end method

.method private a(Landroid/os/Message;)V
    .locals 5

    const/16 v4, 0x44c

    iget v0, p1, Landroid/os/Message;->arg1:I

    sparse-switch v0, :sswitch_data_0

    const-string v0, "handleMessage NOT_DETECTED received"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    const-string v0, "handleMessage MESSAGE_NEW_UPDATE_PACKAGE received"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x456

    invoke-direct {p0, v0}, Lcom/zte/zdm/application/mmi/UIProjectActivity;->a(I)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-direct {p0, v0}, Lcom/zte/zdm/application/mmi/UIProjectActivity;->a(Ljava/util/HashMap;)V

    goto :goto_0

    :sswitch_2
    const-string v0, "handleMessage MESSAGE_CONFIRM_DOWNLOAD received"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "=============MESSAGE_CONFIRM_DOWNLOAD==========="

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/zte/zdm/application/mmi/DownloadActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/mmi/UIProjectActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/zte/zdm/application/mmi/UIProjectActivity;->finish()V

    goto :goto_0

    :sswitch_3
    const-string v0, "handleMessage MESSAGE_UPDATE_FAILED received"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "KEY_TITLE"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "KEY_CONTENT"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/zte/zdm/application/mmi/UIProjectActivity;->v:Lcom/zte/zdm/application/activities/z;

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v1, v0, v3}, Lcom/zte/zdm/application/activities/z;->b(Lcom/zte/zdm/a/j;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    invoke-direct {p0, v4}, Lcom/zte/zdm/application/mmi/UIProjectActivity;->a(I)V

    goto :goto_0

    :sswitch_4
    const-string v0, "handleMessage MESSAGE_SHOW_WIFI_SETTING_DIALOG received"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/mmi/UIProjectActivity;->b(Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_5
    const-string v0, "handleMessage MESSAGE_ORIGINAL received"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/zte/zdm/application/mmi/UIProjectActivity;->a(I)V

    goto :goto_0

    :sswitch_6
    const-string v0, "handleMessage MESSAGE_CALL_MMI_SEND_NEW_UPDATE_PACKAGE received"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zte/zdm/application/mmi/UIProjectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/zdm/application/mmi/UIProjectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zdm/application/mmi/UIProjectActivity;->t:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v2}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/zte/zdm/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "show checking phase"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x451

    invoke-direct {p0, v0}, Lcom/zte/zdm/application/mmi/UIProjectActivity;->a(I)V

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {p0}, Lcom/zte/zdm/application/mmi/UIProjectActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v1, "running_activity"

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/a/a;->c(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/zte/zdm/application/mmi/UIProjectActivity;->finish()V

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "handleMessage MESSAGE_CONFIRM_DOWNLOAD received"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "=============MESSAGE_CONFIRM_DOWNLOAD==========="

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/zte/zdm/application/mmi/DownloadActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/mmi/UIProjectActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/zte/zdm/application/mmi/UIProjectActivity;->finish()V

    goto/16 :goto_0

    :sswitch_a
    invoke-direct {p0}, Lcom/zte/zdm/application/mmi/UIProjectActivity;->l()V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_5
        0x68 -> :sswitch_7
        0x69 -> :sswitch_6
        0x6e -> :sswitch_1
        0x78 -> :sswitch_3
        0x82 -> :sswitch_2
        0x8c -> :sswitch_4
        0x96 -> :sswitch_7
        0xa0 -> :sswitch_9
        0xaa -> :sswitch_a
        0xb4 -> :sswitch_0
        0xbb8 -> :sswitch_8
    .end sparse-switch
.end method

.method static synthetic a(Lcom/zte/zdm/application/mmi/UIProjectActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zte/zdm/application/mmi/UIProjectActivity;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/zte/zdm/application/mmi/UIProjectActivity;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zte/zdm/application/mmi/UIProjectActivity;->a(Landroid/os/Message;)V

    return-void
.end method

.method private a(Ljava/lang/Class;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x1002

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/mmi/UIProjectActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private a(Ljava/util/HashMap;)V
    .locals 4

    const-string v0, "POSITIVE_RUNABLE"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    const-string v1, "NEGATIVE_RUNABLE"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/zte/zdm/application/mmi/UIProjectActivity;->x:Landroid/widget/Button;

    new-instance v3, Lcom/zte/zdm/application/mmi/bz;

    invoke-direct {v3, p0, v0}, Lcom/zte/zdm/application/mmi/bz;-><init>(Lcom/zte/zdm/application/mmi/UIProjectActivity;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/UIProjectActivity;->w:Landroid/widget/Button;

    new-instance v2, Lcom/zte/zdm/application/mmi/ca;

    invoke-direct {v2, p0, v1}, Lcom/zte/zdm/application/mmi/ca;-><init>(Lcom/zte/zdm/application/mmi/UIProjectActivity;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic b(Lcom/zte/zdm/application/mmi/UIProjectActivity;)Lcom/zte/zdm/application/b/g;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/UIProjectActivity;->t:Lcom/zte/zdm/application/b/g;

    return-object v0
.end method

.method public static b()V
    .locals 1

    sget-object v0, Lcom/zte/zdm/application/mmi/UIProjectActivity;->A:Lcom/zte/zdm/application/mmi/aa;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/zte/zdm/application/mmi/UIProjectActivity;->A:Lcom/zte/zdm/application/mmi/aa;

    invoke-virtual {v0}, Lcom/zte/zdm/application/mmi/aa;->d()V

    const/4 v0, 0x0

    sput-object v0, Lcom/zte/zdm/application/mmi/UIProjectActivity;->A:Lcom/zte/zdm/application/mmi/aa;

    :cond_0
    return-void
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/UIProjectActivity;->y:Landroid/widget/Button;

    iget-object v1, p0, Lcom/zte/zdm/application/mmi/UIProjectActivity;->E:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/UIProjectActivity;->t:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zte/zdm/a/d;->g(Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/UIProjectActivity;->t:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/zdm/a/d;->d(Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/UIProjectActivity;->t:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->E()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/UIProjectActivity;->t:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "when onstop is dddownload phase ,so show notification"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/UIProjectActivity;->v:Lcom/zte/zdm/application/activities/z;

    invoke-static {v0}, Lcom/zte/zdm/application/b/co;->a(Lcom/zte/zdm/application/activities/b;)Lcom/zte/zdm/application/b/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/co;->d()V

    :cond_0
    invoke-virtual {p0}, Lcom/zte/zdm/application/mmi/UIProjectActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/zte/zdm/application/mmi/UIProjectActivity;->finish()V

    :cond_1
    return-void
.end method

.method private g()V
    .locals 3

    const/16 v1, 0x451

    const/16 v0, 0x44c

    iget-object v2, p0, Lcom/zte/zdm/application/mmi/UIProjectActivity;->t:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v2}, Lcom/zte/zdm/application/b/g;->E()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/zte/zdm/application/mmi/UIProjectActivity;->t:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v2}, Lcom/zte/zdm/application/b/g;->x()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/zte/zdm/application/mmi/DownloadActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/mmi/UIProjectActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/zte/zdm/application/mmi/UIProjectActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/zte/zdm/application/mmi/UIProjectActivity;->t:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v2}, Lcom/zte/zdm/application/b/g;->w()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "controller is dlSession"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/zte/zdm/application/receiver/AutoUpdateServiceReceiver;->b(Z)V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x69

    iput v1, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/mmi/UIProjectActivity;->a(Ljava/lang/Object;)V

    const/16 v0, 0x456

    :cond_1
    :goto_1
    invoke-direct {p0, v0}, Lcom/zte/zdm/application/mmi/UIProjectActivity;->a(I)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/zte/zdm/application/b/cq;->b()Lcom/zte/zdm/application/b/cq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/zdm/application/b/cq;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/zte/zdm/application/mmi/UIProjectActivity;->t:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v2}, Lcom/zte/zdm/application/b/g;->y()Lcom/zte/zdm/application/d/d/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/zdm/application/d/d/a;->c()Z

    move-result v2

    if-nez v2, :cond_3

    const-string v1, "controller is reportSession"

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/zte/zdm/application/mmi/UIProjectActivity;->t:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v2}, Lcom/zte/zdm/application/b/g;->u()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/zte/zdm/application/receiver/AutoUpdateServiceReceiver;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v1, "controller is auto update"

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/zte/zdm/application/mmi/UIProjectActivity;->t:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v2}, Lcom/zte/zdm/application/b/g;->u()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v0, "controller isDmSession"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    move v0, v1

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/zte/zdm/application/mmi/UIProjectActivity;->t:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v2}, Lcom/zte/zdm/application/b/g;->v()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/zte/zdm/application/receiver/AutoUpdateServiceReceiver;->a()Z

    move-result v2

    if-nez v2, :cond_6

    const-string v0, "controller isDlSession Idle"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    move v0, v1

    goto :goto_1

    :cond_6
    const-string v1, "else ..."

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private h()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const v0, 0x7f0d0085

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/mmi/UIProjectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/UIProjectActivity;->y:Landroid/widget/Button;

    const v0, 0x7f0d0084

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/mmi/UIProjectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/UIProjectActivity;->z:Landroid/widget/TextView;

    const v0, 0x7f0d0002

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/mmi/UIProjectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/UIProjectActivity;->B:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/UIProjectActivity;->B:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/zte/zdm/application/mmi/UIProjectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090161

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "P682A10"

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/zte/zdm/application/b;->b([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "MenuButton"

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/zte/zdm/application/b;->d([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const v0, 0x7f0d0075

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/mmi/UIProjectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/UIProjectActivity;->C:Landroid/widget/Button;

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/UIProjectActivity;->C:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/UIProjectActivity;->C:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/UIProjectActivity;->C:Landroid/widget/Button;

    new-instance v1, Lcom/zte/zdm/application/mmi/bw;

    invoke-direct {v1, p0}, Lcom/zte/zdm/application/mmi/bw;-><init>(Lcom/zte/zdm/application/mmi/UIProjectActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method private i()V
    .locals 1

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->b()Lcom/zte/zdm/application/a;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/UIProjectActivity;->s:Lcom/zte/zdm/application/a;

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/UIProjectActivity;->s:Lcom/zte/zdm/application/a;

    invoke-virtual {v0}, Lcom/zte/zdm/application/a;->a()Lcom/zte/zdm/application/b/g;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/UIProjectActivity;->t:Lcom/zte/zdm/application/b/g;

    invoke-virtual {p0}, Lcom/zte/zdm/application/mmi/UIProjectActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/UIProjectActivity;->u:Lcom/zte/zdm/application/a/a;

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/UIProjectActivity;->t:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->b()Lcom/zte/zdm/a/b;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/application/activities/z;

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/UIProjectActivity;->v:Lcom/zte/zdm/application/activities/z;

    return-void
.end method

.method private j()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v1, Lcom/zte/zdm/application/mmi/bx;

    invoke-direct {v1, p0}, Lcom/zte/zdm/application/mmi/bx;-><init>(Lcom/zte/zdm/application/mmi/UIProjectActivity;)V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/UIProjectActivity;->u:Lcom/zte/zdm/application/a/a;

    const-string v2, "need_release_space"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lcom/zte/zdm/application/a/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/UIProjectActivity;->v:Lcom/zte/zdm/application/activities/z;

    invoke-virtual {v0, p0}, Lcom/zte/zdm/application/activities/z;->b(Lcom/zte/zdm/a/j;)V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/UIProjectActivity;->v:Lcom/zte/zdm/application/activities/z;

    new-array v3, v7, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/zte/zdm/application/mmi/UIProjectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090038

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    new-array v4, v7, [Ljava/lang/Runnable;

    aput-object v1, v4, v6

    const-wide/16 v5, 0x0

    invoke-virtual {p0}, Lcom/zte/zdm/application/mmi/UIProjectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v7, 0x7f090044

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lcom/zte/zdm/application/activities/z;->a(Lcom/zte/zdm/a/j;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Runnable;JLjava/lang/String;)V

    return-void
.end method

.method private k()V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Lcom/zte/zdm/mo/DevDetail;

    invoke-direct {v0}, Lcom/zte/zdm/mo/DevDetail;-><init>()V

    invoke-virtual {v0, v4}, Lcom/zte/zdm/mo/DevDetail;->a(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/application/mmi/UIProjectActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/mmi/UIProjectActivity;->z:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/zte/zdm/application/mmi/UIProjectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090160

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private l()V
    .locals 8

    const/4 v4, 0x1

    const/4 v1, 0x0

    const v0, 0x7f090103

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/mmi/UIProjectActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/String;

    const v0, 0x7f09003a

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/mmi/UIProjectActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    new-array v4, v4, [Ljava/lang/Runnable;

    new-instance v0, Lcom/zte/zdm/application/mmi/cb;

    invoke-direct {v0, p0}, Lcom/zte/zdm/application/mmi/cb;-><init>(Lcom/zte/zdm/application/mmi/UIProjectActivity;)V

    aput-object v0, v4, v1

    const v0, 0x7f090042

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/mmi/UIProjectActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/UIProjectActivity;->v:Lcom/zte/zdm/application/activities/z;

    const-wide/16 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lcom/zte/zdm/application/activities/z;->a(Lcom/zte/zdm/a/j;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Runnable;JLjava/lang/String;)V

    return-void
.end method

.method private m()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "backupORrestore"

    const-string v2, "restore"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/mmi/UIProjectActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v1, Lcom/zte/zdm/application/mmi/bv;

    invoke-direct {v1, p0}, Lcom/zte/zdm/application/mmi/bv;-><init>(Lcom/zte/zdm/application/mmi/UIProjectActivity;)V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/UIProjectActivity;->v:Lcom/zte/zdm/application/activities/z;

    invoke-virtual {p0}, Lcom/zte/zdm/application/mmi/UIProjectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09010d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/zte/zdm/application/mmi/UIProjectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0900ba

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0}, Lcom/zte/zdm/application/mmi/UIProjectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090018

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    new-array v4, v8, [Ljava/lang/Runnable;

    aput-object v1, v4, v6

    const/4 v1, 0x0

    aput-object v1, v4, v7

    const-wide/16 v5, 0x0

    invoke-virtual {p0}, Lcom/zte/zdm/application/mmi/UIProjectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v7, 0x7f09010e

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lcom/zte/zdm/application/activities/z;->a(Lcom/zte/zdm/a/j;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Runnable;JLjava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 2

    instance-of v0, p1, Landroid/os/Message;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/os/Message;

    iget v0, v0, Landroid/os/Message;->arg1:I

    sparse-switch v0, :sswitch_data_0

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/UIProjectActivity;->D:Landroid/os/Handler;

    check-cast p1, Landroid/os/Message;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    :goto_0
    return-void

    :sswitch_0
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

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/UIProjectActivity;->D:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    check-cast p1, Landroid/os/Message;

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/UIProjectActivity;->D:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :sswitch_1
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

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/UIProjectActivity;->D:Landroid/os/Handler;

    check-cast p1, Landroid/os/Message;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_1
        0x69 -> :sswitch_1
        0x6e -> :sswitch_0
        0x78 -> :sswitch_1
        0x82 -> :sswitch_1
        0x8c -> :sswitch_1
        0xa0 -> :sswitch_1
        0xbb8 -> :sswitch_1
    .end sparse-switch
.end method

.method protected b(Ljava/lang/Object;)V
    .locals 11

    check-cast p1, Ljava/util/HashMap;

    const-string v0, "POSITIVE_RUNABLE"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    const-string v1, "NEUTRAL_RUNABLE"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Runnable;

    new-instance v4, Lcom/zte/zdm/application/mmi/by;

    invoke-direct {v4, p0, v6, v0}, Lcom/zte/zdm/application/mmi/by;-><init>(Lcom/zte/zdm/application/mmi/UIProjectActivity;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-static {p0}, Lcom/zte/zdm/application/b/cn;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "NEGATIVE_RUNABLE"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/zte/zdm/application/mmi/UIProjectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090101

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/zte/zdm/application/d/f;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/zte/zdm/application/mmi/UIProjectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090102

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_1
    iget-object v0, p0, Lcom/zte/zdm/application/mmi/UIProjectActivity;->v:Lcom/zte/zdm/application/activities/z;

    invoke-virtual {p0}, Lcom/zte/zdm/application/mmi/UIProjectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090104

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/zte/zdm/application/mmi/UIProjectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v8, 0x7f09009c

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/zte/zdm/application/mmi/UIProjectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v9, 0x7f090082

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lcom/zte/zdm/application/mmi/UIProjectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v10, 0x7f090018

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object v1, p0

    invoke-virtual/range {v0 .. v10}, Lcom/zte/zdm/application/activities/z;->a(Lcom/zte/zdm/a/j;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zte/zdm/application/mmi/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/mmi/z;->show()V

    goto :goto_0
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

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "UIProjectActivity onCreate"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/16 v0, 0x44c

    invoke-direct {p0, v0}, Lcom/zte/zdm/application/mmi/UIProjectActivity;->a(I)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/zte/zdm/application/mmi/UIProjectActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0c0002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    const-string v0, "onDestroy()"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "this.screen = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; and mmicontroller.screen = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/mmi/UIProjectActivity;->t:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v1}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/a/d;->b()Lcom/zte/zdm/a/j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/UIProjectActivity;->t:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/a/d;->b()Lcom/zte/zdm/a/j;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/UIProjectActivity;->t:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/zdm/a/d;->a(Lcom/zte/zdm/a/j;)V

    :cond_0
    invoke-static {}, Lcom/zte/zdm/application/b/gc;->a()Lcom/zte/zdm/application/b/gc;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/zdm/application/mmi/UIProjectActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/zdm/application/b/gc;->c(Landroid/content/Context;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    packed-switch p1, :pswitch_data_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyDown keyCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return v0

    :pswitch_0
    const-string v0, "onKeyDown keyCode=KEYCODE_BACK"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/zte/zdm/application/mmi/UIProjectActivity;->d()V

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    const-string v1, "onKeyDown keyCode=KEYCODE_HOME"

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/zte/zdm/application/mmi/UIProjectActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    const-class v1, Lcom/zte/zdm/application/mmi/AutoupdateSettingActivity;

    invoke-direct {p0, v1}, Lcom/zte/zdm/application/mmi/UIProjectActivity;->a(Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/zte/zdm/c/a;->a(Landroid/content/Context;)Lcom/zte/zdm/c/a;

    move-result-object v1

    const-string v2, "menu_fota_setting"

    invoke-virtual {v1, v0, v2}, Lcom/zte/zdm/c/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-class v1, Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;

    invoke-direct {p0, v1}, Lcom/zte/zdm/application/mmi/UIProjectActivity;->a(Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/zte/zdm/c/a;->a(Landroid/content/Context;)Lcom/zte/zdm/c/a;

    move-result-object v1

    const-string v2, "menu_fota_function"

    invoke-virtual {v1, v0, v2}, Lcom/zte/zdm/c/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-class v1, Lcom/zte/zdm/application/mmi/HistoryForUpdate;

    invoke-direct {p0, v1}, Lcom/zte/zdm/application/mmi/UIProjectActivity;->a(Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/zte/zdm/c/a;->a(Landroid/content/Context;)Lcom/zte/zdm/c/a;

    move-result-object v1

    const-string v2, "menu_fota_history"

    invoke-virtual {v1, v0, v2}, Lcom/zte/zdm/c/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const-class v1, Lcom/zte/zdm/application/mmi/FeedbackNewActivity;

    invoke-direct {p0, v1}, Lcom/zte/zdm/application/mmi/UIProjectActivity;->a(Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/zte/zdm/c/a;->a(Landroid/content/Context;)Lcom/zte/zdm/c/a;

    move-result-object v1

    const-string v2, "menu_fota_feedback"

    invoke-virtual {v1, v0, v2}, Lcom/zte/zdm/c/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcom/zte/zdm/application/mmi/UIProjectActivity;->m()V

    invoke-static {v0}, Lcom/zte/zdm/c/a;->a(Landroid/content/Context;)Lcom/zte/zdm/c/a;

    move-result-object v1

    const-string v2, "menu_fota_restore"

    invoke-virtual {v1, v0, v2}, Lcom/zte/zdm/c/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0d00be
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method protected onResume()V
    .locals 2

    const-string v0, "=========UIIIIIIIIIIIIIIIIIIIIIIIIIIonresume========="

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/UIProjectActivity;->t:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/zdm/a/d;->g(Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/UIProjectActivity;->t:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zte/zdm/a/d;->a(Lcom/zte/zdm/a/j;)V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/UIProjectActivity;->t:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/a/d;->u()Lcom/zte/zdm/a/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/zte/zdm/a/e;->g()V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/UIProjectActivity;->v:Lcom/zte/zdm/application/activities/z;

    invoke-virtual {v0}, Lcom/zte/zdm/application/activities/z;->e()V

    invoke-direct {p0}, Lcom/zte/zdm/application/mmi/UIProjectActivity;->g()V

    return-void
.end method

.method protected onStop()V
    .locals 2

    const-string v0, "onStop"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/zte/zdm/application/mmi/UIProjectActivity;->A:Lcom/zte/zdm/application/mmi/aa;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/zte/zdm/application/mmi/UIProjectActivity;->A:Lcom/zte/zdm/application/mmi/aa;

    invoke-virtual {v0}, Lcom/zte/zdm/application/mmi/aa;->d()V

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/zte/zdm/application/mmi/UIProjectActivity;->t:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v1}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/a/d;->b()Lcom/zte/zdm/a/j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-ne v0, v1, :cond_2

    invoke-static {p0}, Lcom/zte/zdm/application/d/d;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/zte/zdm/application/mmi/UIProjectActivity;->d()V

    :cond_1
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/zte/zdm/application/mmi/UIProjectActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "finish"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zte/zdm/application/mmi/UIProjectActivity;->finish()V

    goto :goto_0
.end method
