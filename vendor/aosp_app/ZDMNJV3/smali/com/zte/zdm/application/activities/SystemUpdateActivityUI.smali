.class public Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;
.super Landroid/preference/PreferenceActivity;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/zte/zdm/a/j;


# static fields
.field public static final a:Ljava/lang/String; = "ORIGINAL"

.field public static final b:Ljava/lang/String; = "NO_UPDATE"

.field public static final c:Ljava/lang/String; = "UPDATE_FAILED"

.field public static final d:Ljava/lang/String; = "UPDATE_SUCESSFULLY"

.field public static final e:Ljava/lang/String; = "android.action.unchecked"

.field public static final f:Ljava/lang/String; = "android.action.checked"

.field public static final g:I = 0x14

.field private static o:Z = false

.field private static final q:Ljava/lang/String; = "nextlaunch"

.field private static final r:Ljava/lang/String; = "status"

.field private static final s:Ljava/lang/String; = "update"

.field private static final t:Ljava/lang/String; = "settings"

.field private static final u:Ljava/lang/String; = "feedback"


# instance fields
.field private A:Z

.field private B:Landroid/preference/Preference;

.field private C:Landroid/preference/Preference;

.field private D:Landroid/preference/Preference;

.field private E:Landroid/preference/Preference;

.field private F:Landroid/app/Activity;

.field private G:Landroid/os/Handler;

.field public h:Ljava/lang/String;

.field i:Lcom/zte/zdm/application/a/a;

.field j:Landroid/widget/TextView;

.field k:Landroid/widget/TextView;

.field l:Landroid/widget/CheckBox;

.field m:Landroid/view/LayoutInflater;

.field n:Landroid/widget/LinearLayout;

.field private p:Z

.field private v:Lcom/zte/zdm/application/a;

.field private w:Lcom/zte/zdm/application/b/g;

.field private x:Lcom/zte/zdm/a/e;

.field private y:Lcom/zte/zdm/application/activities/b;

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->o:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    iput-boolean v1, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->p:Z

    const-string v0, "ORIGINAL"

    iput-object v0, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->h:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->z:Z

    iput-boolean v1, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->A:Z

    new-instance v0, Lcom/zte/zdm/application/activities/bj;

    invoke-direct {v0, p0}, Lcom/zte/zdm/application/activities/bj;-><init>(Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;)V

    iput-object v0, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->G:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;)Lcom/zte/zdm/application/b/g;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->w:Lcom/zte/zdm/application/b/g;

    return-object v0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "current_connection_type"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v0, "not to deal"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "DataConnectivityReceiver.StateGPRSConnected"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->w:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/a/d;->C()V

    goto :goto_0

    :pswitch_1
    const-string v0, "DataConnectivityReceiver.StateWifiConnected"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string v0, "DataConnectivityReceiver.StateNoneConnected"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->a(Landroid/content/Intent;)V

    return-void
.end method

.method public static a(Z)V
    .locals 0

    sput-boolean p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->o:Z

    return-void
.end method

.method static synthetic b(Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->t()V

    return-void
.end method

.method static synthetic c(Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->n()V

    return-void
.end method

.method public static h()Z
    .locals 1

    sget-boolean v0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->o:Z

    return v0
.end method

.method private i()V
    .locals 6

    const v5, 0x7f09009b

    const v3, 0x7f09009a

    const/4 v4, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "nextlaunch"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-static {}, Lcom/zte/zdm/application/receiver/AutoUpdateServiceReceiver;->b()Z

    move-result v0

    if-ne v0, v2, :cond_2

    const-string v0, "Main Activity onResume showNextLaunch AutoUpdateServiceReceiver.autoUpdate is true!"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/zte/zdm/application/b/cq;->b()Lcom/zte/zdm/application/b/cq;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->w:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->E()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->k()V

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    const-string v0, "showNextLaunch() type = SHOW_PROGRESS_BAR_DIALOG"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->m()V

    goto :goto_0

    :sswitch_1
    const-string v0, "showNextLaunch() type = SHOW_INSTALL_ALERT_DIALOG"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->w:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->E()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->w:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/zte/zdm/a/d;->d(Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->w:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/zte/zdm/a/d;->c(Z)V

    invoke-direct {p0}, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->l()V

    goto :goto_0

    :sswitch_2
    const-string v0, "showNextLaunch() type = SHOW_CHECKNEW_NOW"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->n()V

    goto :goto_0

    :sswitch_3
    const-string v0, "showNextLaunch() type = SHOW_DOWNLOAD_DESCRITION_DIALOG"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->w:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/zte/zdm/a/d;->d(Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->w:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090014

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/zte/zdm/application/receiver/AutoUpdateServiceReceiver;->b(Z)V

    goto :goto_0

    :sswitch_4
    const-string v0, "showNextLaunch() type = SHOW_DELAY_REMINDER"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->w:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/zte/zdm/a/d;->d(Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->w:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/zte/zdm/a/d;->c(Z)V

    invoke-direct {p0}, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->l()V

    goto/16 :goto_0

    :sswitch_5
    sget-boolean v0, Lcom/zte/zdm/application/b/r;->f:Z

    if-ne v2, v0, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->w:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/zte/zdm/a/d;->d(Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->w:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->B()V

    sput-boolean v4, Lcom/zte/zdm/application/b/r;->f:Z

    const-string v0, "showNextLaunch() type  = SHOW_DD_DELAY_REMINDER"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "showNextLaunch() type = SHOW_WIFI_IS_CMCC_DIALOG"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->w:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/a/d;->m(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_7
    invoke-direct {p0}, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->j()V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->w:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->E()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->c()V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->w:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/a/d;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "showNextLaunch() wifi gallery warning dialog"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->w:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/zte/zdm/a/d;->d(Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->w:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/a/d;->m(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const-string v0, "showNextLaunch() type = UNKONWN"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_4
        0x7 -> :sswitch_5
        0x8 -> :sswitch_6
        0x14 -> :sswitch_7
    .end sparse-switch
.end method

.method private j()V
    .locals 3

    iget-object v0, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->w:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    const v1, 0x7f090064

    invoke-virtual {p0, v1}, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f090067

    invoke-virtual {p0, v2}, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/a/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private k()V
    .locals 3

    iget-object v0, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->w:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zte/zdm/a/d;->d(Z)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/zte/zdm/application/receiver/AutoUpdateServiceReceiver;->b(Z)V

    invoke-virtual {p0}, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->w:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v2}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/zte/zdm/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Main Activity onResume showNextLaunch showDownloadDiscriptionDialog"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private l()V
    .locals 4

    iget-object v0, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->w:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09001d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/a/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private m()V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->w:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/application/b/s;

    new-array v1, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "CMCC"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/zte/zdm/application/b;->c([Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p0}, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->g()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/s;->F()V

    :goto_0
    return-void

    :cond_0
    invoke-static {v4}, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->a(Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->w:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->w:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v1}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/a/d;->c()I

    move-result v1

    iget-object v2, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->w:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v2}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/zdm/a/d;->d()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/a/d;->b(II)V

    goto :goto_0
.end method

.method private n()V
    .locals 1

    const-string v0, "connectAndTriggerFumoSession"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->o()V

    return-void
.end method

.method private final o()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->w:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->y()Lcom/zte/zdm/application/d/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/d/d/a;->f()V

    invoke-static {v1}, Lcom/zte/zdm/application/receiver/AutoUpdateServiceReceiver;->a(Z)V

    invoke-static {v1}, Lcom/zte/zdm/application/receiver/AutoUpdateServiceReceiver;->b(Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->v:Lcom/zte/zdm/application/a;

    invoke-virtual {v0}, Lcom/zte/zdm/application/a;->b()Lcom/zte/zdm/application/services/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/services/c;->a()V

    return-void
.end method

.method private p()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-array v0, v5, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09009c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p0}, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090084

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    new-array v1, v5, [Ljava/lang/Runnable;

    new-instance v2, Lcom/zte/zdm/application/activities/bk;

    invoke-direct {v2, p0}, Lcom/zte/zdm/application/activities/bk;-><init>(Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;)V

    aput-object v2, v1, v3

    new-instance v2, Lcom/zte/zdm/application/activities/bl;

    invoke-direct {v2, p0}, Lcom/zte/zdm/application/activities/bl;-><init>(Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;)V

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->w:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v2}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v2

    invoke-virtual {p0}, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09006c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090042

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/zte/zdm/a/d;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Runnable;)V

    return-void
.end method

.method private q()Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_0

    move v0, v1

    :cond_0
    if-ne v0, v1, :cond_1

    const-string v1, "getAirPlaneMode AirPlane"

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_1
    const-string v1, "getAirPlaneMode none AirPlane"

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private r()Z
    .locals 3

    invoke-static {p0}, Lcom/zte/zdm/application/ui/f;->a(Landroid/content/Context;)Lcom/zte/zdm/application/ui/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/ui/f;->b()Lcom/zte/zdm/application/ui/g;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "is wifi only = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, v0, Lcom/zte/zdm/application/ui/g;->c:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, v0, Lcom/zte/zdm/application/ui/g;->c:Z

    return v0
.end method

.method private s()V
    .locals 2

    invoke-virtual {p0}, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    const-string v1, "status"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->B:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->B:Landroid/preference/Preference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v1, "update"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->C:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->C:Landroid/preference/Preference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v1, "settings"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->D:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->D:Landroid/preference/Preference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v1, "feedback"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->E:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->E:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->E:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_0
    return-void
.end method

.method private t()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->i:Lcom/zte/zdm/application/a/a;

    sget-object v1, Lcom/zte/zdm/b/b/a;->aO:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/a/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->z:Z

    iget-boolean v0, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->z:Z

    if-ne v0, v3, :cond_1

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "Australia"

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/zte/zdm/application/b;->b([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->C:Landroid/preference/Preference;

    const v1, 0x7f090021

    invoke-virtual {p0, v1}, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->C:Landroid/preference/Preference;

    const v1, 0x7f090020

    invoke-virtual {p0, v1}, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->C:Landroid/preference/Preference;

    const v1, 0x7f090023

    invoke-virtual {p0, v1}, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->w:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/a/d;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "showNotificationforInstall when download complete!"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->x:Lcom/zte/zdm/a/e;

    invoke-interface {v0}, Lcom/zte/zdm/a/e;->c()V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1

    instance-of v0, p1, Landroid/os/Message;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->G:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    check-cast p1, Landroid/os/Message;

    iget-object v0, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->G:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public b()V
    .locals 4

    const-string v0, "SystemUpdateActivity onPause: Maybe click home button or back button"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->i:Lcom/zte/zdm/application/a/a;

    const-string v1, "dl_session_state"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/a/a;->b(Ljava/lang/String;I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The DlSession state is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", and 2 is metaState"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->w:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->w:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/a/d;->e()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "changeBackgroundFlag when click home!"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onPause: dismissWaitingDialog!"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->w:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/a/d;->x()V

    iget-object v0, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->w:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zte/zdm/a/d;->e(Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->w:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/a/d;->c()I

    move-result v0

    iget-object v1, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->w:Lcom/zte/zdm/application/b/g;

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

    iget-object v2, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->x:Lcom/zte/zdm/a/e;

    invoke-interface {v2, v0, v1}, Lcom/zte/zdm/a/e;->a(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "when showNotificationforDownload error occur! Error information is:"

    invoke-static {p0, v1, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public c()V
    .locals 1

    invoke-static {}, Lcom/zte/zdm/application/mmi/bq;->a()Lcom/zte/zdm/application/mmi/bq;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zte/zdm/application/mmi/bq;->a(Landroid/content/Context;)V

    return-void
.end method

.method public d()Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->g()Z

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNetworkConnected 2G/3G is ok!State"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->p:Z

    return v0
.end method

.method public g()Z
    .locals 4

    const/4 v1, 0x1

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWifiEnable State : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "onCreate=============="

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->F:Landroid/app/Activity;

    const v0, 0x7f050001

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->addPreferencesFromResource(I)V

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->b()Lcom/zte/zdm/application/a;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->v:Lcom/zte/zdm/application/a;

    iget-object v0, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->v:Lcom/zte/zdm/application/a;

    invoke-virtual {v0}, Lcom/zte/zdm/application/a;->a()Lcom/zte/zdm/application/b/g;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->w:Lcom/zte/zdm/application/b/g;

    sput-boolean v2, Lcom/zte/zdm/application/activities/b;->h:Z

    iget-object v0, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->w:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/a/d;->b()Lcom/zte/zdm/a/j;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->w:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/a/d;->b()Lcom/zte/zdm/a/j;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->w:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zte/zdm/a/d;->a(Lcom/zte/zdm/a/j;)V

    iget-object v0, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->w:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->b()Lcom/zte/zdm/a/b;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/application/activities/b;

    iput-object v0, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->y:Lcom/zte/zdm/application/activities/b;

    iget-object v0, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->w:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/a/d;->u()Lcom/zte/zdm/a/e;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/application/b/co;

    iput-object v0, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->x:Lcom/zte/zdm/a/e;

    invoke-virtual {p0}, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->i:Lcom/zte/zdm/application/a/a;

    iget-object v0, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->i:Lcom/zte/zdm/application/a/a;

    const-string v1, "delay_install"

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/a/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->z:Z

    sput-object p0, Lcom/zte/zdm/application/d/f/d;->h:Landroid/content/Context;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->A:Z

    new-instance v0, Lcom/zte/zdm/application/activities/bi;

    invoke-direct {v0, p0}, Lcom/zte/zdm/application/activities/bi;-><init>(Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    invoke-direct {p0}, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->s()V

    invoke-direct {p0}, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->t()V

    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreateDialog  dialog id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->y:Lcom/zte/zdm/application/activities/b;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->y:Lcom/zte/zdm/application/activities/b;

    invoke-virtual {v0, p1}, Lcom/zte/zdm/application/activities/b;->a(I)Landroid/app/Dialog;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    :goto_0
    return-object v0

    :cond_1
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "onDestroy()"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

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

    iget-object v1, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->w:Lcom/zte/zdm/application/b/g;

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

    iget-object v0, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->w:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/a/d;->b()Lcom/zte/zdm/a/j;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->w:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/zdm/a/d;->a(Lcom/zte/zdm/a/j;)V

    :cond_0
    invoke-static {}, Lcom/zte/zdm/application/b/gc;->a()Lcom/zte/zdm/application/b/gc;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/zdm/application/b/gc;->c(Landroid/content/Context;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AndroidDisplayManagerImpl.onNewIntent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->setIntent(Landroid/content/Intent;)V

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-direct {p0, p1}, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->a(Landroid/content/Intent;)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->setIntent(Landroid/content/Intent;)V

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    iget-boolean v0, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->A:Z

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "status"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "preference is status"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/zte/zdm/application/ui/UpdateInfo;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return v3

    :cond_1
    const-string v1, "update"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "preference is update"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->i:Lcom/zte/zdm/application/a/a;

    const-string v1, "delay_install"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/a/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->z:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "if delayed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->z:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->z:Z

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->x:Lcom/zte/zdm/a/e;

    invoke-interface {v0}, Lcom/zte/zdm/a/e;->g()V

    invoke-virtual {p0}, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->w:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v2}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/zte/zdm/a/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->c()V

    goto :goto_0

    :cond_3
    const-string v1, "settings"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "preference is settings"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/zte/zdm/application/ui/UpdateSetting;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    const-string v1, "feedback"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "preference is feedback"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/zte/zdm/application/activities/FeedbackActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method protected onResume()V
    .locals 4

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->p:Z

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->i:Lcom/zte/zdm/application/a/a;

    const-string v2, "delay_install"

    invoke-virtual {v1, v2, v3}, Lcom/zte/zdm/application/a/a;->a(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->z:Z

    iget-object v1, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->w:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v1}, Lcom/zte/zdm/application/b/g;->x()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->z:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    :cond_0
    const-string v0, "Main Activity onResume!"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AndroidDisplayManagerImpl.isToSetting"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/zte/zdm/application/activities/b;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->w:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/a/d;->H()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/zte/zdm/application/activities/b;->h:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->w:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/a/d;->b()Lcom/zte/zdm/a/j;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->w:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v1}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/zte/zdm/a/d;->b(Lcom/zte/zdm/a/j;)V

    sput-boolean v3, Lcom/zte/zdm/application/activities/b;->h:Z

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AndroidDisplayManagerImpl.isToSetting"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/zte/zdm/application/activities/b;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->w:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/zte/zdm/a/d;->g(Z)V

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    invoke-direct {p0}, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->t()V

    invoke-direct {p0}, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->i()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->A:Z

    return-void
.end method

.method public onStart()V
    .locals 3

    const-string v0, "onStart========"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStart()V

    invoke-static {}, Lcom/zte/zdm/heartyservice/core/a;->a()Lcom/zte/zdm/heartyservice/core/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/heartyservice/core/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/zte/zdm/heartyservice/core/a;->a()Lcom/zte/zdm/heartyservice/core/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/zdm/heartyservice/core/a;->a(Z)V

    invoke-virtual {p0}, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->v:Lcom/zte/zdm/application/a;

    invoke-virtual {v1}, Lcom/zte/zdm/application/a;->a()Lcom/zte/zdm/application/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/zte/zdm/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v0, "onStop======="

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->p:Z

    iget-object v0, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->w:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/zte/zdm/a/d;->g(Z)V

    invoke-static {p0}, Lcom/zte/zdm/application/d/d;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->i:Lcom/zte/zdm/application/a/a;

    const-string v1, "delay_install"

    invoke-virtual {v0, v1, v3}, Lcom/zte/zdm/application/a/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->z:Z

    iget-boolean v0, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->z:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->w:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/a/d;->r()V

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->w:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->E()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->w:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->x()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "is downloading"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "CMCC"

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/zte/zdm/application/b;->c([Ljava/lang/String;)Z

    move-result v1

    iget-object v0, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->w:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/application/b/s;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/s;->B()Lcom/zte/zdm/application/b/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/k;->a()Z

    move-result v0

    if-eqz v1, :cond_1

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->b()V

    :cond_2
    :goto_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->w:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->w()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "when onstop is dddownload phase ,so show notification"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->y:Lcom/zte/zdm/application/activities/b;

    invoke-static {v0}, Lcom/zte/zdm/application/b/co;->a(Lcom/zte/zdm/application/activities/b;)Lcom/zte/zdm/application/b/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/co;->d()V

    goto :goto_0
.end method
