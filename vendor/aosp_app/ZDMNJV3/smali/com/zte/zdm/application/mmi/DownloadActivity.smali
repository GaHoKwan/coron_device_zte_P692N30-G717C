.class public Lcom/zte/zdm/application/mmi/DownloadActivity;
.super Landroid/app/Activity;

# interfaces
.implements Lcom/zte/zdm/a/j;


# static fields
.field private static A:Landroid/widget/ProgressBar; = null

.field private static B:Landroid/widget/ImageView; = null

.field private static C:Landroid/widget/TextView; = null

.field private static D:Landroid/widget/Button; = null

.field private static E:Landroid/widget/Button; = null

.field private static F:Landroid/widget/Button; = null

.field private static G:Landroid/widget/Button; = null

.field private static H:Landroid/widget/Button; = null

.field private static J:Lcom/zte/zdm/application/b/g; = null

.field private static K:Lcom/zte/zdm/application/a/a; = null

.field private static M:Lcom/zte/zdm/a/j; = null

.field private static N:Z = false

.field private static O:Ljava/lang/String; = null

.field private static P:Z = false

.field private static Q:Ljava/lang/String; = null

.field public static final a:Ljava/lang/String; = "android.intent.action.startProgressActivity"

.field public static final b:Ljava/lang/String; = "currentSize"

.field public static final c:Ljava/lang/String; = "totalSize"

.field public static final d:Ljava/lang/String; = "releaseNotes"

.field public static final e:Ljava/lang/String; = "downloadNetError"

.field public static final f:Ljava/lang/String; = "true"

.field public static final g:Ljava/lang/String; = "false"

.field public static final h:I = 0x7d4

.field public static final i:I = 0x7d5

.field public static final j:I = 0x7d6

.field public static final k:I = 0x7d7

.field public static final l:I = 0x7d8

.field public static m:Landroid/widget/TextView;

.field public static p:J

.field private static q:I

.field private static r:I

.field private static s:Landroid/widget/TextView;

.field private static t:Landroid/widget/ProgressBar;

.field private static u:Landroid/widget/ImageView;

.field private static v:Landroid/widget/ImageView;

.field private static w:Landroid/widget/TextView;

.field private static x:Landroid/content/Intent;

.field private static y:Landroid/content/Context;


# instance fields
.field private I:Lcom/zte/zdm/application/a;

.field private L:Lcom/zte/zdm/application/activities/z;

.field private R:Landroid/os/Handler;

.field n:Landroid/widget/ExpandableListView;

.field o:Z

.field private z:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    sput-boolean v2, Lcom/zte/zdm/application/mmi/DownloadActivity;->N:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->O:Ljava/lang/String;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->p:J

    sput-boolean v2, Lcom/zte/zdm/application/mmi/DownloadActivity;->P:Z

    const-string v0, ""

    sput-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->Q:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/zdm/application/mmi/DownloadActivity;->o:Z

    new-instance v0, Lcom/zte/zdm/application/mmi/ak;

    invoke-direct {v0, p0}, Lcom/zte/zdm/application/mmi/ak;-><init>(Lcom/zte/zdm/application/mmi/DownloadActivity;)V

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/DownloadActivity;->R:Landroid/os/Handler;

    return-void
.end method

.method private A()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->J:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->C()V

    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->y:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/c/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/c/a;->e()V

    new-instance v1, Lcom/zte/zdm/application/mmi/aj;

    invoke-direct {v1, p0}, Lcom/zte/zdm/application/mmi/aj;-><init>(Lcom/zte/zdm/application/mmi/DownloadActivity;)V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/DownloadActivity;->L:Lcom/zte/zdm/application/activities/z;

    invoke-virtual {p0}, Lcom/zte/zdm/application/mmi/DownloadActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090164

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/zte/zdm/application/mmi/DownloadActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09003a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Runnable;

    aput-object v1, v4, v6

    const/4 v1, 0x0

    aput-object v1, v4, v7

    const-wide/16 v5, 0x0

    invoke-virtual {p0}, Lcom/zte/zdm/application/mmi/DownloadActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v7, 0x7f0900d4

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lcom/zte/zdm/application/activities/z;->a(Lcom/zte/zdm/a/j;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Runnable;JLjava/lang/String;)V

    return-void
.end method

.method private B()V
    .locals 7

    const v6, 0x7f090103

    const v5, 0x7f090057

    const/16 v4, 0x8

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/zte/zdm/application/b/cn;->g(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/zte/zdm/application/d/f;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->C:Landroid/widget/TextView;

    invoke-virtual {p0, v6}, Lcom/zte/zdm/application/mmi/DownloadActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->J:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/a/d;->N()Lcom/zte/zdm/a/c;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/application/b/k;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/k;->a()Z

    move-result v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "CMCC"

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/zte/zdm/application/b;->c([Ljava/lang/String;)Z

    move-result v1

    sget-object v2, Lcom/zte/zdm/application/mmi/DownloadActivity;->J:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v2}, Lcom/zte/zdm/application/b/g;->s()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "it is not dlsession, shouldn\'t start this activity"

    invoke-static {p0, v2}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    invoke-static {p0}, Lcom/zte/zdm/application/b/cn;->f(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v0, "net is not connect"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->C:Landroid/widget/TextView;

    const v1, 0x7f090069

    invoke-virtual {p0, v1}, Lcom/zte/zdm/application/mmi/DownloadActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    invoke-static {p0}, Lcom/zte/zdm/application/b/cn;->i(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v0, "is roaming"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->C:Landroid/widget/TextView;

    const v1, 0x7f09006b

    invoke-virtual {p0, v1}, Lcom/zte/zdm/application/mmi/DownloadActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    invoke-static {p0}, Lcom/zte/zdm/application/b/cn;->g(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_5

    if-eqz v1, :cond_5

    const-string v0, "for cmcc"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->C:Landroid/widget/TextView;

    invoke-virtual {p0, v6}, Lcom/zte/zdm/application/mmi/DownloadActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_5
    if-eqz v0, :cond_6

    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->J:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->E()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->J:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->p()V

    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->C:Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Lcom/zte/zdm/application/mmi/DownloadActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->E:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->F:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    :cond_6
    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->J:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "need to reStart engine as engine is not work"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->C:Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Lcom/zte/zdm/application/mmi/DownloadActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->E:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->F:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private static C()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/zte/zdm/application/mmi/DownloadActivity;->y:Landroid/content/Context;

    const-class v2, Lcom/zte/zdm/application/mmi/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x1002

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget-object v1, Lcom/zte/zdm/application/mmi/DownloadActivity;->y:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static a()J
    .locals 2

    sget-wide v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->p:J

    return-wide v0
.end method

.method public static a(II)V
    .locals 4

    const-wide/16 v2, 0x14

    if-nez p1, :cond_2

    sput-wide v2, Lcom/zte/zdm/application/mmi/DownloadActivity;->p:J

    :goto_0
    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->m:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v2, Lcom/zte/zdm/application/mmi/DownloadActivity;->p:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->J:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/a/d;->H()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->J:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/a/d;->b()Lcom/zte/zdm/a/j;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->J:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/a/d;->u()Lcom/zte/zdm/a/e;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/zte/zdm/a/e;->c(II)V

    :cond_1
    return-void

    :cond_2
    int-to-long v0, p0

    mul-long/2addr v0, v2

    int-to-long v2, p1

    div-long/2addr v0, v2

    sput-wide v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->p:J

    goto :goto_0
.end method

.method public static a(J)V
    .locals 0

    sput-wide p0, Lcom/zte/zdm/application/mmi/DownloadActivity;->p:J

    return-void
.end method

.method static synthetic a(Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0}, Lcom/zte/zdm/application/mmi/DownloadActivity;->b(Landroid/content/Intent;)V

    return-void
.end method

.method private a(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->arg1:I

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->J:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/a/d;->b()Lcom/zte/zdm/a/j;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/application/c/e;->a(Landroid/app/Activity;Lcom/zte/zdm/a/j;)Lcom/zte/zdm/application/c/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zte/zdm/application/c/e;->a(Landroid/os/Message;)V

    goto :goto_0

    :sswitch_1
    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->J:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/a/d;->b()Lcom/zte/zdm/a/j;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/application/c/e;->a(Landroid/app/Activity;Lcom/zte/zdm/a/j;)Lcom/zte/zdm/application/c/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zte/zdm/application/c/e;->a(Landroid/os/Message;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x14 -> :sswitch_0
        0x1e -> :sswitch_1
    .end sparse-switch
.end method

.method private static a(Lcom/zte/zdm/application/b/g;)V
    .locals 1

    invoke-virtual {p0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/a/d;->c()I

    move-result v0

    sput v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->q:I

    invoke-virtual {p0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/a/d;->d()I

    move-result v0

    sput v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->r:I

    return-void
.end method

.method static synthetic a(Lcom/zte/zdm/application/mmi/DownloadActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/zte/zdm/application/mmi/DownloadActivity;->z()V

    return-void
.end method

.method public static b(J)Ljava/lang/String;
    .locals 6

    const/4 v3, 0x1

    const/4 v5, 0x0

    const-string v0, ""

    const-wide/32 v1, 0x100000

    cmp-long v1, p0, v1

    if-lez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%.2f"

    new-array v2, v3, [Ljava/lang/Object;

    long-to-float v3, p0

    const/high16 v4, 0x4980

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/application/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090087

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-wide/16 v1, 0x400

    cmp-long v1, p0, v1

    if-lez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%.2f"

    new-array v2, v3, [Ljava/lang/Object;

    long-to-float v3, p0

    const/high16 v4, 0x4480

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/application/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090086

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/application/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090088

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static b()V
    .locals 2

    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->A:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->B:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private static b(Landroid/content/Intent;)V
    .locals 4

    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->J:Lcom/zte/zdm/application/b/g;

    invoke-static {v0}, Lcom/zte/zdm/application/mmi/DownloadActivity;->a(Lcom/zte/zdm/application/b/g;)V

    sget v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->r:I

    if-nez v0, :cond_0

    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->y:Landroid/content/Context;

    const-string v1, "totalSize is zero, load size from zdm.xml"

    invoke-static {v0, v1}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->q:I

    sget v1, Lcom/zte/zdm/application/mmi/DownloadActivity;->r:I

    if-le v0, v1, :cond_1

    sget v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->r:I

    sput v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->q:I

    :cond_1
    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->y:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "currentSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/zte/zdm/application/mmi/DownloadActivity;->q:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",totalSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/zte/zdm/application/mmi/DownloadActivity;->r:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lcom/zte/zdm/application/c/a;->c:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->N:Z

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    :cond_2
    sget-boolean v0, Lcom/zte/zdm/application/c/a;->c:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->N:Z

    if-nez v0, :cond_4

    :cond_3
    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->s:Landroid/widget/TextView;

    invoke-static {}, Lcom/zte/zdm/application/mmi/DownloadActivity;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->m:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zte/zdm/application/mmi/DownloadActivity;->v()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/zte/zdm/application/mmi/DownloadActivity;->t()V

    sget v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->q:I

    sget v1, Lcom/zte/zdm/application/mmi/DownloadActivity;->r:I

    if-ne v0, v1, :cond_5

    invoke-static {}, Lcom/zte/zdm/application/mmi/DownloadActivity;->w()V

    :cond_5
    invoke-static {p0}, Lcom/zte/zdm/application/mmi/DownloadActivity;->c(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/zte/zdm/application/mmi/DownloadActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/zte/zdm/application/mmi/DownloadActivity;->B()V

    return-void
.end method

.method public static c()V
    .locals 3

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->p:J

    const-string v0, ""

    sput-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->Q:Ljava/lang/String;

    sput-boolean v2, Lcom/zte/zdm/application/c/a;->d:Z

    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->y:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/c/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/c/a;

    move-result-object v0

    iput v2, v0, Lcom/zte/zdm/application/c/a;->a:I

    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->y:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/c/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/c/a;

    move-result-object v0

    iput v2, v0, Lcom/zte/zdm/application/c/a;->b:I

    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->K:Lcom/zte/zdm/application/a/a;

    const-string v1, "backup_click"

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/a/a;->b(Ljava/lang/String;Z)V

    const-wide/16 v0, 0x1f4

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->K:Lcom/zte/zdm/application/a/a;

    const-string v1, "running_activity"

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/a/a;->c(Ljava/lang/String;I)V

    invoke-static {}, Lcom/zte/zdm/application/mmi/DownloadActivity;->C()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static c(Landroid/content/Intent;)V
    .locals 2

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "current_connection_type"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->y:Landroid/content/Context;

    const-string v1, "not to deal"

    invoke-static {v0, v1}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->y:Landroid/content/Context;

    const-string v1, "DataConnectivityReceiver.StateGPRSConnected"

    invoke-static {v0, v1}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->J:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/a/d;->C()V

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->y:Landroid/content/Context;

    const-string v1, "DataConnectivityReceiver.StateWifiConnected"

    invoke-static {v0, v1}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->y:Landroid/content/Context;

    const-string v1, "DataConnectivityReceiver.StateNoneConnected"

    invoke-static {v0, v1}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic c(Lcom/zte/zdm/application/mmi/DownloadActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/zte/zdm/application/mmi/DownloadActivity;->q()V

    return-void
.end method

.method public static d()V
    .locals 3

    const/4 v2, 0x0

    sput-boolean v2, Lcom/zte/zdm/application/c/a;->c:Z

    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->t:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->u:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->J:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->B()V

    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->x:Landroid/content/Intent;

    invoke-static {v0}, Lcom/zte/zdm/application/mmi/DownloadActivity;->b(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic d(Lcom/zte/zdm/application/mmi/DownloadActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/zte/zdm/application/mmi/DownloadActivity;->x()V

    return-void
.end method

.method static synthetic g()V
    .locals 0

    invoke-static {}, Lcom/zte/zdm/application/mmi/DownloadActivity;->C()V

    return-void
.end method

.method private h()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->K:Lcom/zte/zdm/application/a/a;

    const-string v1, "resume_download"

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/a/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->P:Z

    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->K:Lcom/zte/zdm/application/a/a;

    const-string v1, "backup_click"

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/a/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->N:Z

    invoke-virtual {p0}, Lcom/zte/zdm/application/mmi/DownloadActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/application/c/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/c/a;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->O:Ljava/lang/String;

    return-void
.end method

.method private i()V
    .locals 4

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/mmi/DownloadActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    new-instance v1, Lcom/zte/zdm/application/mmi/af;

    invoke-direct {v1, p0}, Lcom/zte/zdm/application/mmi/af;-><init>(Landroid/content/Context;)V

    const v2, 0x7f03001c

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/zte/zdm/application/mmi/af;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/mmi/DownloadActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method private j()V
    .locals 4

    const v0, 0x7f0d006b

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/mmi/DownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sput-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->u:Landroid/widget/ImageView;

    const v0, 0x7f0d006d

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/mmi/DownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sput-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->v:Landroid/widget/ImageView;

    const v0, 0x7f0d0067

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/mmi/DownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->m:Landroid/widget/TextView;

    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->m:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v2, Lcom/zte/zdm/application/mmi/DownloadActivity;->p:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0d0094

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/mmi/DownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    sput-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->t:Landroid/widget/ProgressBar;

    const v0, 0x7f0d0096

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/mmi/DownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    sput-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->A:Landroid/widget/ProgressBar;

    const v0, 0x7f0d006f

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/mmi/DownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sput-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->B:Landroid/widget/ImageView;

    const v0, 0x7f0d0070

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/mmi/DownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->w:Landroid/widget/TextView;

    const v0, 0x7f0d0069

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/mmi/DownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/DownloadActivity;->z:Landroid/widget/LinearLayout;

    const v0, 0x7f0d0095

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/mmi/DownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->s:Landroid/widget/TextView;

    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->s:Landroid/widget/TextView;

    sget-object v1, Lcom/zte/zdm/application/mmi/DownloadActivity;->Q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0d0093

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/mmi/DownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->C:Landroid/widget/TextView;

    return-void
.end method

.method private k()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->J:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->x()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->J:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/a/d;->e()Z

    move-result v0

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/zte/zdm/application/c/a;->d:Z

    if-eq v0, v2, :cond_0

    sget-boolean v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->P:Z

    if-ne v0, v2, :cond_1

    sget-boolean v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->N:Z

    if-ne v0, v2, :cond_1

    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->O:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    sput-boolean v2, Lcom/zte/zdm/application/c/a;->d:Z

    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->t:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->u:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/DownloadActivity;->z:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-boolean v0, Lcom/zte/zdm/application/c/a;->c:Z

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/DownloadActivity;->z:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/zte/zdm/application/mmi/DownloadActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "backupORrestore"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sput-boolean v2, Lcom/zte/zdm/application/c/a;->c:Z

    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->y:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/c/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/c/a;

    move-result-object v0

    iput-boolean v3, v0, Lcom/zte/zdm/application/c/a;->f:Z

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/DownloadActivity;->z:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->y:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/c/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/c/a;

    move-result-object v0

    const-string v1, "backup"

    invoke-virtual {v0, v1}, Lcom/zte/zdm/application/c/a;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    sget-boolean v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->P:Z

    if-ne v0, v2, :cond_5

    sget-boolean v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->N:Z

    if-ne v0, v2, :cond_5

    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->O:Ljava/lang/String;

    if-eqz v0, :cond_5

    sput-boolean v2, Lcom/zte/zdm/application/c/a;->d:Z

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/DownloadActivity;->z:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_5
    sput-boolean v3, Lcom/zte/zdm/application/c/a;->c:Z

    invoke-static {}, Lcom/zte/zdm/application/mmi/DownloadActivity;->d()V

    goto :goto_0
.end method

.method private l()V
    .locals 3

    const/16 v2, 0x8

    const v0, 0x7f0d009b

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/mmi/DownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sput-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->D:Landroid/widget/Button;

    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->D:Landroid/widget/Button;

    new-instance v1, Lcom/zte/zdm/application/mmi/ag;

    invoke-direct {v1, p0}, Lcom/zte/zdm/application/mmi/ag;-><init>(Lcom/zte/zdm/application/mmi/DownloadActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0d009a

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/mmi/DownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sput-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->E:Landroid/widget/Button;

    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->E:Landroid/widget/Button;

    new-instance v1, Lcom/zte/zdm/application/mmi/ah;

    invoke-direct {v1, p0}, Lcom/zte/zdm/application/mmi/ah;-><init>(Lcom/zte/zdm/application/mmi/DownloadActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0d0099

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/mmi/DownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sput-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->F:Landroid/widget/Button;

    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->F:Landroid/widget/Button;

    new-instance v1, Lcom/zte/zdm/application/mmi/ai;

    invoke-direct {v1, p0}, Lcom/zte/zdm/application/mmi/ai;-><init>(Lcom/zte/zdm/application/mmi/DownloadActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, p0, Lcom/zte/zdm/application/mmi/DownloadActivity;->o:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->D:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->F:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private m()V
    .locals 3

    const v0, 0x7f0d0072

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/mmi/DownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sput-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->G:Landroid/widget/Button;

    const v0, 0x7f0d0071

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/mmi/DownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sput-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->H:Landroid/widget/Button;

    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->J:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/a/d;->b()Lcom/zte/zdm/a/j;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/application/c/e;->a(Landroid/app/Activity;Lcom/zte/zdm/a/j;)Lcom/zte/zdm/application/c/e;

    move-result-object v0

    sget-object v1, Lcom/zte/zdm/application/mmi/DownloadActivity;->G:Landroid/widget/Button;

    sget-object v2, Lcom/zte/zdm/application/mmi/DownloadActivity;->H:Landroid/widget/Button;

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/c/e;->a(Landroid/widget/Button;Landroid/widget/Button;)V

    return-void
.end method

.method private n()V
    .locals 3

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->b()Lcom/zte/zdm/application/a;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/DownloadActivity;->I:Lcom/zte/zdm/application/a;

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/DownloadActivity;->I:Lcom/zte/zdm/application/a;

    invoke-virtual {v0}, Lcom/zte/zdm/application/a;->a()Lcom/zte/zdm/application/b/g;

    move-result-object v0

    sput-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->J:Lcom/zte/zdm/application/b/g;

    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->J:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zte/zdm/a/d;->a(Lcom/zte/zdm/a/j;)V

    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->J:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/a/d;->b()Lcom/zte/zdm/a/j;

    move-result-object v0

    sput-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->M:Lcom/zte/zdm/a/j;

    invoke-virtual {p0}, Lcom/zte/zdm/application/mmi/DownloadActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    sput-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->K:Lcom/zte/zdm/application/a/a;

    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->K:Lcom/zte/zdm/application/a/a;

    const-string v1, "running_activity"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/a/a;->c(Ljava/lang/String;I)V

    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->J:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->b()Lcom/zte/zdm/a/b;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/application/activities/z;

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/DownloadActivity;->L:Lcom/zte/zdm/application/activities/z;

    return-void
.end method

.method private o()V
    .locals 2

    sget-boolean v0, Lcom/zte/zdm/application/c/e;->g:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/zte/zdm/application/c/e;->g:Z

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/DownloadActivity;->L:Lcom/zte/zdm/application/activities/z;

    sget-object v1, Lcom/zte/zdm/application/mmi/DownloadActivity;->M:Lcom/zte/zdm/a/j;

    invoke-virtual {v0, v1}, Lcom/zte/zdm/application/activities/z;->b(Lcom/zte/zdm/a/j;)V

    invoke-direct {p0}, Lcom/zte/zdm/application/mmi/DownloadActivity;->p()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/zte/zdm/application/mmi/DownloadActivity;->q()V

    goto :goto_0
.end method

.method private p()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->y:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/b/r;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Delay_update_conut"

    invoke-static {v0, v1, v2}, Lcom/zte/zdm/application/b/r;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->J:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/a/d;->n()V

    :cond_0
    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->J:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/zte/zdm/a/d;->d(Z)V

    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->J:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/a/d;->r()V

    return-void
.end method

.method private q()V
    .locals 4

    const-string v0, "onPause: Maybe click home button or back button"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->J:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->x()Z

    move-result v0

    sget-object v1, Lcom/zte/zdm/application/mmi/DownloadActivity;->J:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v1}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/a/d;->e()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "controller.isDownloading()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "controller.getMmiController().getCancelConfirmDialogShown()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/zte/zdm/application/mmi/DownloadActivity;->s()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->N:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-boolean v0, Lcom/zte/zdm/application/c/a;->d:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->P:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/zte/zdm/application/mmi/DownloadActivity;->r()V

    goto :goto_0
.end method

.method private r()V
    .locals 3

    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->J:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/zdm/a/d;->d(Z)V

    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->J:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/a/d;->u()Lcom/zte/zdm/a/e;

    move-result-object v0

    sget-object v1, Lcom/zte/zdm/application/mmi/DownloadActivity;->y:Landroid/content/Context;

    invoke-static {v1}, Lcom/zte/zdm/application/c/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/c/a;

    move-result-object v1

    iget v1, v1, Lcom/zte/zdm/application/c/a;->b:I

    sget-object v2, Lcom/zte/zdm/application/mmi/DownloadActivity;->y:Landroid/content/Context;

    invoke-static {v2}, Lcom/zte/zdm/application/c/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/c/a;

    move-result-object v2

    iget v2, v2, Lcom/zte/zdm/application/c/a;->a:I

    invoke-interface {v0, v1, v2}, Lcom/zte/zdm/a/e;->b(II)V

    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->J:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zte/zdm/a/d;->g(Z)V

    invoke-virtual {p0}, Lcom/zte/zdm/application/mmi/DownloadActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/zte/zdm/application/mmi/DownloadActivity;->finish()V

    goto :goto_0
.end method

.method private s()V
    .locals 4

    const-string v0, "showNotificationBarWhenDownload beforesetHomeClick"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->J:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zte/zdm/a/d;->g(Z)V

    invoke-virtual {p0}, Lcom/zte/zdm/application/mmi/DownloadActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/zte/zdm/application/mmi/DownloadActivity;->finish()V

    :try_start_0
    const-string v0, "changeBackgroundFlag when click home!"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->J:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/a/d;->c()I

    move-result v0

    sget-object v1, Lcom/zte/zdm/application/mmi/DownloadActivity;->J:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v1}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/a/d;->d()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get current size and total size, current size is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", total size is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/zte/zdm/application/mmi/DownloadActivity;->J:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v2}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/zte/zdm/a/d;->d(Z)V

    sget-object v2, Lcom/zte/zdm/application/mmi/DownloadActivity;->J:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v2}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/zdm/a/d;->u()Lcom/zte/zdm/a/e;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/zte/zdm/a/e;->a(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "when showNotificationforDownload error occur! Error information is:"

    invoke-static {p0, v1, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static t()V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x0

    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->J:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/a/d;->N()Lcom/zte/zdm/a/c;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/application/b/k;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Lcom/zte/zdm/application/b/k;->b(I)I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090069

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    sget-object v1, Lcom/zte/zdm/application/mmi/DownloadActivity;->C:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->F:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->E:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    :goto_1
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/zte/zdm/application/b/k;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0900ad

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->C:Landroid/widget/TextView;

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/application/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090057

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->E:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->F:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private static u()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/zte/zdm/application/mmi/DownloadActivity;->q:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Lcom/zte/zdm/application/mmi/DownloadActivity;->b(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/zte/zdm/application/mmi/DownloadActivity;->r:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Lcom/zte/zdm/application/mmi/DownloadActivity;->b(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->Q:Ljava/lang/String;

    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->Q:Ljava/lang/String;

    return-object v0
.end method

.method private static v()J
    .locals 6

    const/4 v1, 0x1

    sget-boolean v0, Lcom/zte/zdm/application/c/a;->c:Z

    if-eq v0, v1, :cond_1

    sget-boolean v0, Lcom/zte/zdm/application/c/a;->d:Z

    if-eq v0, v1, :cond_0

    sget-boolean v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->P:Z

    if-ne v0, v1, :cond_2

    sget-boolean v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->N:Z

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->O:Ljava/lang/String;

    if-eqz v0, :cond_2

    :cond_0
    const-wide/16 v0, 0x14

    const-wide/16 v2, 0x46

    sget v4, Lcom/zte/zdm/application/mmi/DownloadActivity;->q:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    sget v4, Lcom/zte/zdm/application/mmi/DownloadActivity;->r:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    add-long/2addr v0, v2

    sput-wide v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->p:J

    :cond_1
    :goto_0
    sget-wide v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->p:J

    return-wide v0

    :cond_2
    const-wide/16 v0, 0x5a

    sget v2, Lcom/zte/zdm/application/mmi/DownloadActivity;->q:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    sget v2, Lcom/zte/zdm/application/mmi/DownloadActivity;->r:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    sput-wide v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->p:J

    goto :goto_0
.end method

.method private static w()V
    .locals 0

    invoke-static {}, Lcom/zte/zdm/application/mmi/DownloadActivity;->y()V

    return-void
.end method

.method private x()V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    sput v2, Lcom/zte/zdm/application/mmi/DownloadActivity;->q:I

    sput v2, Lcom/zte/zdm/application/mmi/DownloadActivity;->r:I

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->p:J

    sput-boolean v2, Lcom/zte/zdm/application/c/a;->d:Z

    const-string v0, ""

    sput-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->Q:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/zte/zdm/application/c/e;->g:Z

    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->G:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->H:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->F:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->w:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->A:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->B:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->m:Landroid/widget/TextView;

    const-string v1, "95%"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->E:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->C:Landroid/widget/TextView;

    const v1, 0x7f090057

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->J:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/a/d;->b()Lcom/zte/zdm/a/j;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/application/c/e;->a(Landroid/app/Activity;Lcom/zte/zdm/a/j;)Lcom/zte/zdm/application/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/c/e;->a()V

    return-void
.end method

.method private static y()V
    .locals 3

    const/4 v2, 0x0

    const/16 v1, 0x8

    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->D:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->F:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->v:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->A:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method private z()V
    .locals 3

    sget-boolean v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->N:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    sget-boolean v0, Lcom/zte/zdm/application/c/a;->d:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->P:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/zte/zdm/application/c/a;->c:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/zte/zdm/application/mmi/DownloadActivity;->A()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->J:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->E()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->J:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->J:Lcom/zte/zdm/application/b/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/zdm/application/b/g;->b(Z)V

    const v0, 0x7f090017

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/mmi/DownloadActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090042

    invoke-virtual {p0, v1}, Lcom/zte/zdm/application/mmi/DownloadActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/zte/zdm/application/mmi/DownloadActivity;->J:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v2}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/zte/zdm/a/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    const-string v0, "onUpdateScreenData"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Landroid/os/Message;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "((Message)what).arg1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Landroid/os/Message;

    iget v0, v0, Landroid/os/Message;->what:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(Message.arg1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Landroid/os/Message;

    iget v0, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Landroid/os/Message;

    iget v0, v0, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :goto_0
    move-object v0, p1

    check-cast v0, Landroid/os/Message;

    iget v0, v0, Landroid/os/Message;->arg1:I

    sparse-switch v0, :sswitch_data_1

    :cond_0
    :goto_1
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/zte/zdm/application/mmi/DownloadActivity;->R:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-object v0, p1

    check-cast v0, Landroid/os/Message;

    iget-object v1, p0, Lcom/zte/zdm/application/mmi/DownloadActivity;->R:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :sswitch_1
    check-cast p1, Landroid/os/Message;

    invoke-direct {p0, p1}, Lcom/zte/zdm/application/mmi/DownloadActivity;->a(Landroid/os/Message;)V

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0x7d4 -> :sswitch_0
        0x7d5 -> :sswitch_0
        0x7d6 -> :sswitch_0
        0x7d7 -> :sswitch_0
        0x7d8 -> :sswitch_0
        0xbb8 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x14 -> :sswitch_1
        0x1e -> :sswitch_1
    .end sparse-switch
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
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate intent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/zdm/application/mmi/DownloadActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate currentSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/zte/zdm/application/mmi/DownloadActivity;->q:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "totalPercent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v1, Lcom/zte/zdm/application/mmi/DownloadActivity;->p:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zte/zdm/application/mmi/DownloadActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->x:Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/zte/zdm/application/mmi/DownloadActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->y:Landroid/content/Context;

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "0"

    invoke-static {p0, v0}, Lcom/zte/zdm/application/b/r;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/zdm/application/mmi/DownloadActivity;->o:Z

    :cond_1
    invoke-direct {p0}, Lcom/zte/zdm/application/mmi/DownloadActivity;->i()V

    invoke-direct {p0}, Lcom/zte/zdm/application/mmi/DownloadActivity;->n()V

    invoke-direct {p0}, Lcom/zte/zdm/application/mmi/DownloadActivity;->l()V

    invoke-direct {p0}, Lcom/zte/zdm/application/mmi/DownloadActivity;->m()V

    invoke-direct {p0}, Lcom/zte/zdm/application/mmi/DownloadActivity;->j()V

    invoke-direct {p0}, Lcom/zte/zdm/application/mmi/DownloadActivity;->h()V

    invoke-direct {p0}, Lcom/zte/zdm/application/mmi/DownloadActivity;->k()V

    invoke-virtual {p0}, Lcom/zte/zdm/application/mmi/DownloadActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/application/mmi/DownloadActivity;->b(Landroid/content/Intent;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "onDestroy"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->J:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/a/d;->b()Lcom/zte/zdm/a/j;

    move-result-object v0

    if-eqz v0, :cond_1

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

    sget-object v1, Lcom/zte/zdm/application/mmi/DownloadActivity;->J:Lcom/zte/zdm/application/b/g;

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

    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->J:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/a/d;->b()Lcom/zte/zdm/a/j;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->J:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/zdm/a/d;->d(Z)V

    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->J:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/zdm/a/d;->a(Lcom/zte/zdm/a/j;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "mmicontroller.screen = null"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
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

    invoke-direct {p0}, Lcom/zte/zdm/application/mmi/DownloadActivity;->o()V

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

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNewIntent intent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/zte/zdm/application/mmi/DownloadActivity;->setIntent(Landroid/content/Intent;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    invoke-static {p1}, Lcom/zte/zdm/application/mmi/DownloadActivity;->b(Landroid/content/Intent;)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    const/4 v1, 0x1

    const-string v0, "onPause"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->J:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/a/d;->e()Z

    move-result v0

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->J:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/zte/zdm/a/d;->d(Z)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    const-string v0, "onResume"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->J:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zte/zdm/a/d;->a(Lcom/zte/zdm/a/j;)V

    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->J:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/zdm/a/d;->g(Z)V

    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->J:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/a/d;->u()Lcom/zte/zdm/a/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/zte/zdm/a/e;->g()V

    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->J:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/a/d;->e()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/zte/zdm/application/mmi/DownloadActivity;->z()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    const-string v0, "onStart"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 2

    const-string v0, "onStop======="

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    invoke-static {p0}, Lcom/zte/zdm/application/d/d;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/zte/zdm/application/mmi/DownloadActivity;->o()V

    :cond_0
    sget-object v0, Lcom/zte/zdm/application/mmi/DownloadActivity;->J:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/a/d;->b()Lcom/zte/zdm/a/j;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/zte/zdm/application/mmi/DownloadActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/zte/zdm/application/mmi/DownloadActivity;->finish()V

    :cond_1
    return-void
.end method
