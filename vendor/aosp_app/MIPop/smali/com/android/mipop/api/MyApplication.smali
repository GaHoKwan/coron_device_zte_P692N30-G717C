.class public Lcom/android/mipop/api/MyApplication;
.super Landroid/app/Application;


# static fields
.field private static fQ:Lcom/android/mipop/b/i;

.field private static fR:Lcom/android/mipop/b/e;

.field private static fS:Lcom/android/mipop/b/h;

.field private static fT:Lcom/android/mipop/b/b;

.field private static fV:Lcom/android/mipop/api/MyApplication;

.field private static fX:Z

.field private static fY:I


# instance fields
.field private final DBG:Z

.field private TAG:Ljava/lang/String;

.field private dG:Landroid/database/ContentObserver;

.field private fU:Landroid/view/WindowManager$LayoutParams;

.field public final fW:Z

.field private fZ:Landroid/database/ContentObserver;

.field private ga:Landroid/database/ContentObserver;

.field gb:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/android/mipop/api/MyApplication;->fQ:Lcom/android/mipop/b/i;

    sput-object v0, Lcom/android/mipop/api/MyApplication;->fR:Lcom/android/mipop/b/e;

    sput-object v0, Lcom/android/mipop/api/MyApplication;->fS:Lcom/android/mipop/b/h;

    sput-object v0, Lcom/android/mipop/api/MyApplication;->fT:Lcom/android/mipop/b/b;

    sput-object v0, Lcom/android/mipop/api/MyApplication;->fV:Lcom/android/mipop/api/MyApplication;

    sput-boolean v1, Lcom/android/mipop/api/MyApplication;->fX:Z

    sput v1, Lcom/android/mipop/api/MyApplication;->fY:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    const-string v0, "Suhao.MyApplication"

    iput-object v0, p0, Lcom/android/mipop/api/MyApplication;->TAG:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/mipop/api/MyApplication;->DBG:Z

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/android/mipop/api/MyApplication;->fU:Landroid/view/WindowManager$LayoutParams;

    iput-boolean v1, p0, Lcom/android/mipop/api/MyApplication;->fW:Z

    new-instance v0, Lcom/android/mipop/api/a;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/mipop/api/a;-><init>(Lcom/android/mipop/api/MyApplication;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/mipop/api/MyApplication;->dG:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/mipop/api/b;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/mipop/api/b;-><init>(Lcom/android/mipop/api/MyApplication;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/mipop/api/MyApplication;->fZ:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/mipop/api/c;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/mipop/api/c;-><init>(Lcom/android/mipop/api/MyApplication;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/mipop/api/MyApplication;->ga:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/mipop/api/d;

    invoke-direct {v0, p0}, Lcom/android/mipop/api/d;-><init>(Lcom/android/mipop/api/MyApplication;)V

    iput-object v0, p0, Lcom/android/mipop/api/MyApplication;->gb:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "MyAppWidget"

    const-string v1, "app: taskAsigned"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.ONSTARTINPUTVIEW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/mipop/api/MyApplication;->az()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "android.intent.action.ONHIDEINPUTVIEW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/mipop/api/MyApplication;->aA()V

    goto :goto_0

    :cond_2
    const-string v1, "android.intent.action.ACTION_BOOT_IPO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/mipop/api/MyApplication;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mipop/api/MyApplication;->at()V

    return-void
.end method

.method static synthetic a(Lcom/android/mipop/api/MyApplication;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mipop/api/MyApplication;->a(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcom/android/mipop/api/MyApplication;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mipop/api/MyApplication;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/android/mipop/api/MyApplication;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mipop/api/MyApplication;->f(Z)V

    return-void
.end method

.method private aA()V
    .locals 2

    const-string v0, "Suhao.Input"

    const-string v1, "app: inputmethodHide"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/mipop/api/MyApplication;->as()I

    move-result v1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/mipop/api/MyApplication;->fT:Lcom/android/mipop/b/b;

    sget v0, Lcom/android/mipop/b/b;->cE:I

    sget v1, Lcom/android/mipop/b/a;->N:I

    div-int/lit8 v1, v1, 0x5

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/mipop/api/MyApplication;->fT:Lcom/android/mipop/b/b;

    sget v0, Lcom/android/mipop/api/MyApplication;->fY:I

    sput v0, Lcom/android/mipop/b/b;->cE:I

    sget v0, Lcom/android/mipop/api/MyApplication;->fY:I

    sput v0, Lcom/android/mipop/a/g;->cE:I

    sget-object v0, Lcom/android/mipop/api/MyApplication;->fT:Lcom/android/mipop/b/b;

    sget v0, Lcom/android/mipop/b/b;->cD:I

    sget v1, Lcom/android/mipop/api/MyApplication;->fY:I

    invoke-static {v0, v1}, Lcom/android/mipop/a/g;->f(II)V

    :cond_0
    return-void
.end method

.method private aB()V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/mipop/api/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "full_fcreen_first_in"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "full_fcreen_shot_clicked"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mfirstIn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  mScreenShotClicked="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/mipop/api/MyApplication;->log(Ljava/lang/String;)V

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/mipop/api/MyApplication;->aq()Lcom/android/mipop/api/MyApplication;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/mipop/api/MyApplication;->i(I)V

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "full_fcreen_first_in"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method private aC()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/android/mipop/api/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "back_Key_Long_press_first"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSmartRemindDialog-- mfirstLongPress="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/mipop/api/MyApplication;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mipop/MIPopActivity;->bc()Lcom/android/mipop/MIPopActivity;

    move-result-object v2

    if-nez v2, :cond_1

    if-nez v1, :cond_0

    invoke-virtual {p0, v4}, Lcom/android/mipop/api/MyApplication;->i(I)V

    const-string v1, "back_Key_Long_press_first"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSmartRemindDialog getMiPopIsClicked()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/mipop/MIPopActivity;->bc()Lcom/android/mipop/MIPopActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mipop/MIPopActivity;->bd()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mfirstLongPress="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/mipop/api/MyApplication;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mipop/MIPopActivity;->bc()Lcom/android/mipop/MIPopActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mipop/MIPopActivity;->bd()Z

    move-result v2

    if-nez v2, :cond_2

    if-nez v1, :cond_2

    invoke-virtual {p0, v4}, Lcom/android/mipop/api/MyApplication;->i(I)V

    const-string v1, "back_Key_Long_press_first"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    invoke-static {}, Lcom/android/mipop/MIPopActivity;->bc()Lcom/android/mipop/MIPopActivity;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/mipop/MIPopActivity;->h(Z)V

    goto :goto_0
.end method

.method public static aq()Lcom/android/mipop/api/MyApplication;
    .locals 1

    sget-object v0, Lcom/android/mipop/api/MyApplication;->fV:Lcom/android/mipop/api/MyApplication;

    return-object v0
.end method

.method private at()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/mipop/api/MyApplication;->as()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mipop/api/MyApplication;->au()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/mipop/api/MyApplication;->av()V

    goto :goto_0
.end method

.method private ay()V
    .locals 7

    const v6, 0x7f020003

    const/4 v5, 0x1

    const/4 v4, 0x0

    const v3, 0x7f020024

    const v2, 0x7f020002

    invoke-virtual {p0}, Lcom/android/mipop/api/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "FirstKey"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v5, :cond_0

    sget-object v0, Lcom/android/mipop/b/l;->hj:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/b/b;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/b/l;

    invoke-virtual {v0, v3}, Lcom/android/mipop/b/l;->setImageResource(I)V

    sget-object v0, Lcom/android/mipop/b/l;->hj:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/b/b;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/b/l;

    const v1, 0x7f020025

    invoke-virtual {v0, v3, v1}, Lcom/android/mipop/b/l;->n(II)V

    sget-object v0, Lcom/android/mipop/b/l;->hj:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/b/h;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/b/l;

    invoke-virtual {v0, v2}, Lcom/android/mipop/b/l;->setImageResource(I)V

    sget-object v0, Lcom/android/mipop/b/l;->hj:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/b/h;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/b/l;

    invoke-virtual {v0, v2, v6}, Lcom/android/mipop/b/l;->n(II)V

    sget-object v0, Lcom/android/mipop/b/l;->hj:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/b/b;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/b/l;

    invoke-virtual {v0, v5}, Lcom/android/mipop/b/l;->m(I)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/mipop/b/l;->hj:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/b/b;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/b/l;

    invoke-virtual {v0, v2}, Lcom/android/mipop/b/l;->setImageResource(I)V

    sget-object v0, Lcom/android/mipop/b/l;->hj:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/b/b;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/b/l;

    invoke-virtual {v0, v2, v6}, Lcom/android/mipop/b/l;->n(II)V

    sget-object v0, Lcom/android/mipop/b/l;->hj:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/b/h;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/b/l;

    invoke-virtual {v0, v3}, Lcom/android/mipop/b/l;->setImageResource(I)V

    sget-object v0, Lcom/android/mipop/b/l;->hj:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/b/h;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/b/l;

    const v1, 0x7f020025

    invoke-virtual {v0, v3, v1}, Lcom/android/mipop/b/l;->n(II)V

    sget-object v0, Lcom/android/mipop/b/l;->hj:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/b/b;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/b/l;

    invoke-virtual {v0, v4}, Lcom/android/mipop/b/l;->m(I)V

    goto :goto_0
.end method

.method private az()V
    .locals 3

    const-string v0, "Suhao.Input"

    const-string v1, "app: inputmethodShow"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/mipop/api/MyApplication;->as()I

    move-result v1

    if-ne v0, v1, :cond_0

    sget v0, Lcom/android/mipop/b/a;->N:I

    div-int/lit8 v0, v0, 0x5

    const-string v1, "Suhao.Input"

    const-string v2, "app: inputmethodShow mipop show=true"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/mipop/api/MyApplication;->fT:Lcom/android/mipop/b/b;

    sget v1, Lcom/android/mipop/b/b;->cE:I

    sput v1, Lcom/android/mipop/api/MyApplication;->fY:I

    sget-object v1, Lcom/android/mipop/api/MyApplication;->fT:Lcom/android/mipop/b/b;

    sput v0, Lcom/android/mipop/b/b;->cE:I

    sput v0, Lcom/android/mipop/a/g;->cE:I

    sget-object v1, Lcom/android/mipop/api/MyApplication;->fT:Lcom/android/mipop/b/b;

    sget v1, Lcom/android/mipop/b/b;->cD:I

    invoke-static {v1, v0}, Lcom/android/mipop/a/g;->f(II)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/android/mipop/api/MyApplication;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mipop/api/MyApplication;->aC()V

    return-void
.end method

.method static synthetic c(Lcom/android/mipop/api/MyApplication;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mipop/api/MyApplication;->aB()V

    return-void
.end method

.method static synthetic d(Lcom/android/mipop/api/MyApplication;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mipop/api/MyApplication;->ay()V

    return-void
.end method

.method private f(Z)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/android/mipop/api/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "MIPOP"

    invoke-virtual {p0}, Lcom/android/mipop/api/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f06

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v4, :cond_0

    sget-boolean v0, Lcom/android/mipop/api/MyApplication;->fX:Z

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/mipop/api/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "MIPOP"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    sput-boolean v4, Lcom/android/mipop/api/MyApplication;->fX:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-boolean v0, Lcom/android/mipop/api/MyApplication;->fX:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/mipop/api/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "MIPOP"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_3
    sput-boolean v5, Lcom/android/mipop/api/MyApplication;->fX:Z

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/mipop/api/MyApplication;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public ap()Z
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    :try_start_0
    const-class v0, Lcom/android/internal/R$bool;

    const-string v3, "config_showNavigationBar"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/mipop/api/MyApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    const-string v3, "qemu.hw.mainkeys"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v2

    :cond_0
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hasPhysicKeyboard() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v0, :cond_2

    move v3, v1

    :goto_2
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/mipop/api/MyApplication;->log(Ljava/lang/String;)V

    if-nez v0, :cond_3

    :goto_3
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto :goto_0

    :cond_1
    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    goto :goto_1

    :cond_2
    move v3, v2

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3
.end method

.method public ar()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/android/mipop/api/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "showNavigationBar"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/mipop/api/e;->bs()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/android/mipop/api/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f07

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    if-nez v0, :cond_3

    const-string v0, "hide"

    goto :goto_0

    :cond_3
    const-string v0, "show"

    goto :goto_0
.end method

.method public as()I
    .locals 3

    invoke-static {}, Lcom/android/mipop/api/e;->br()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/mipop/api/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f06

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/mipop/api/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "MIPOP"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public au()V
    .locals 3

    const/4 v2, 0x4

    invoke-static {}, Lcom/android/mipop/a/g;->stop()V

    sget-object v0, Lcom/android/mipop/b/l;->hj:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/b/b;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/b/l;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mipop/b/l;->setVisibility(I)V

    sget-object v0, Lcom/android/mipop/b/l;->hj:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/b/h;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/b/l;

    invoke-virtual {v0, v2}, Lcom/android/mipop/b/l;->setVisibility(I)V

    sget-object v0, Lcom/android/mipop/b/l;->hj:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/b/e;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/b/l;

    invoke-virtual {v0, v2}, Lcom/android/mipop/b/l;->setVisibility(I)V

    sget-object v0, Lcom/android/mipop/b/l;->hj:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/b/i;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/b/l;

    invoke-virtual {v0, v2}, Lcom/android/mipop/b/l;->setVisibility(I)V

    return-void
.end method

.method public av()V
    .locals 3

    const/16 v2, 0x8

    sget-object v0, Lcom/android/mipop/b/l;->hj:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/b/h;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/b/l;

    invoke-virtual {v0, v2}, Lcom/android/mipop/b/l;->setVisibility(I)V

    sget-object v0, Lcom/android/mipop/b/l;->hj:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/b/e;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/b/l;

    invoke-virtual {v0, v2}, Lcom/android/mipop/b/l;->setVisibility(I)V

    sget-object v0, Lcom/android/mipop/b/l;->hj:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/b/i;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/b/l;

    invoke-virtual {v0, v2}, Lcom/android/mipop/b/l;->setVisibility(I)V

    sget-object v0, Lcom/android/mipop/b/l;->hj:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/b/b;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/b/l;

    invoke-virtual {v0, v2}, Lcom/android/mipop/b/l;->setVisibility(I)V

    return-void
.end method

.method public aw()V
    .locals 3

    const/16 v2, 0x8

    invoke-static {}, Lcom/android/mipop/a/g;->stop()V

    invoke-static {}, Lcom/android/mipop/a/f;->stop()V

    sget-object v0, Lcom/android/mipop/b/l;->hj:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/b/b;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/b/l;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mipop/b/l;->j(Z)V

    sget-object v0, Lcom/android/mipop/b/l;->hj:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/b/h;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/b/l;

    invoke-virtual {v0, v2}, Lcom/android/mipop/b/l;->setVisibility(I)V

    sget-object v0, Lcom/android/mipop/b/l;->hj:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/b/e;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/b/l;

    invoke-virtual {v0, v2}, Lcom/android/mipop/b/l;->setVisibility(I)V

    sget-object v0, Lcom/android/mipop/b/l;->hj:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/b/i;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/b/l;

    invoke-virtual {v0, v2}, Lcom/android/mipop/b/l;->setVisibility(I)V

    sget-object v0, Lcom/android/mipop/b/l;->hj:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/b/b;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/b/l;

    invoke-virtual {v0, v2}, Lcom/android/mipop/b/l;->setVisibility(I)V

    return-void
.end method

.method public ax()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x4

    sget-object v0, Lcom/android/mipop/b/l;->hj:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/b/b;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/b/l;

    invoke-virtual {v0, v3}, Lcom/android/mipop/b/l;->j(Z)V

    invoke-static {}, Lcom/android/mipop/a/g;->stop()V

    sget-object v0, Lcom/android/mipop/b/l;->hj:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/b/b;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/b/l;

    invoke-virtual {v0, v3}, Lcom/android/mipop/b/l;->setVisibility(I)V

    sget-object v0, Lcom/android/mipop/b/l;->hj:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/b/h;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/b/l;

    invoke-virtual {v0, v2}, Lcom/android/mipop/b/l;->setVisibility(I)V

    sget-object v0, Lcom/android/mipop/b/l;->hj:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/b/e;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/b/l;

    invoke-virtual {v0, v2}, Lcom/android/mipop/b/l;->setVisibility(I)V

    sget-object v0, Lcom/android/mipop/b/l;->hj:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/b/i;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/b/l;

    invoke-virtual {v0, v2}, Lcom/android/mipop/b/l;->setVisibility(I)V

    return-void
.end method

.method public i(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showSmartRemindDialog enter dialogType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mipop/api/MyApplication;->log(Ljava/lang/String;)V

    return-void
.end method

.method public onCreate()V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    const-string v0, "MyAppWidget"

    const-string v1, "app receiver register"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-object p0, Lcom/android/mipop/api/MyApplication;->fV:Lcom/android/mipop/api/MyApplication;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.ONSTARTINPUTVIEW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ONHIDEINPUTVIEW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_BOOT_IPO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/mipop/api/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mipop/api/MyApplication;->gb:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/mipop/api/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "MIPOP"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/mipop/api/MyApplication;->dG:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/mipop/api/MyApplication;->ap()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mipop/api/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "IsFullScreen"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mipop/api/MyApplication;->fZ:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/mipop/api/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "FirstKey"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mipop/api/MyApplication;->ga:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/mipop/api/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mipop/b/a;->a(Landroid/content/Context;)V

    new-instance v0, Lcom/android/mipop/b/i;

    invoke-virtual {p0}, Lcom/android/mipop/api/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/mipop/b/i;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/mipop/api/MyApplication;->fQ:Lcom/android/mipop/b/i;

    new-instance v0, Lcom/android/mipop/b/e;

    invoke-virtual {p0}, Lcom/android/mipop/api/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/mipop/b/e;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/mipop/api/MyApplication;->fR:Lcom/android/mipop/b/e;

    new-instance v0, Lcom/android/mipop/b/h;

    invoke-virtual {p0}, Lcom/android/mipop/api/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/mipop/b/h;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/mipop/api/MyApplication;->fS:Lcom/android/mipop/b/h;

    new-instance v0, Lcom/android/mipop/b/b;

    invoke-virtual {p0}, Lcom/android/mipop/api/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/mipop/b/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/mipop/api/MyApplication;->fT:Lcom/android/mipop/b/b;

    invoke-direct {p0}, Lcom/android/mipop/api/MyApplication;->ay()V

    invoke-direct {p0}, Lcom/android/mipop/api/MyApplication;->at()V

    return-void
.end method
