.class public Lcom/zte/zdm/application/ui/UpdateInfo;
.super Landroid/preference/PreferenceActivity;


# static fields
.field private static final a:Ljava/lang/String; = "status"

.field private static final b:Ljava/lang/String; = "version"


# instance fields
.field private c:Lcom/zte/zdm/application/ui/e;

.field private d:Landroid/preference/Preference;

.field private e:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/zte/zdm/application/ui/UpdateInfo;->d:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/zte/zdm/application/ui/UpdateInfo;->c:Lcom/zte/zdm/application/ui/e;

    invoke-virtual {v1}, Lcom/zte/zdm/application/ui/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zte/zdm/application/ui/UpdateInfo;->e:Landroid/preference/Preference;

    invoke-direct {p0}, Lcom/zte/zdm/application/ui/UpdateInfo;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 3

    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    const-string v1, "UNKNOWN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v0, "apps.setting.product.release"

    const-string v1, "UNKNOWN"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/zte/zdm/application/ui/e;

    invoke-direct {v0, p0}, Lcom/zte/zdm/application/ui/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/zdm/application/ui/UpdateInfo;->c:Lcom/zte/zdm/application/ui/e;

    const v0, 0x7f050006

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/ui/UpdateInfo;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/zte/zdm/application/ui/UpdateInfo;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    const-string v1, "status"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/zdm/application/ui/UpdateInfo;->d:Landroid/preference/Preference;

    const-string v1, "version"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/application/ui/UpdateInfo;->e:Landroid/preference/Preference;

    invoke-direct {p0}, Lcom/zte/zdm/application/ui/UpdateInfo;->a()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    invoke-direct {p0}, Lcom/zte/zdm/application/ui/UpdateInfo;->a()V

    return-void
.end method
