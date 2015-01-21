.class public Lcom/zte/zdm/heartyservice/ui/HeartyServiceUpdateSettingsActivity;
.super Landroid/preference/PreferenceActivity;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field a:Lcom/zte/zdm/application/ui/c;

.field b:Lcom/zte/zdm/application/ui/c;

.field c:Lcom/zte/zdm/application/ui/c;

.field d:Lcom/zte/zdm/application/ui/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 1

    new-instance v0, Lcom/zte/zdm/application/ui/a;

    invoke-direct {v0, p0, p0}, Lcom/zte/zdm/application/ui/a;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iput-object v0, p0, Lcom/zte/zdm/heartyservice/ui/HeartyServiceUpdateSettingsActivity;->a:Lcom/zte/zdm/application/ui/c;

    new-instance v0, Lcom/zte/zdm/application/ui/h;

    invoke-direct {v0, p0, p0}, Lcom/zte/zdm/application/ui/h;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iput-object v0, p0, Lcom/zte/zdm/heartyservice/ui/HeartyServiceUpdateSettingsActivity;->b:Lcom/zte/zdm/application/ui/c;

    new-instance v0, Lcom/zte/zdm/application/ui/d;

    invoke-direct {v0, p0, p0}, Lcom/zte/zdm/application/ui/d;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iput-object v0, p0, Lcom/zte/zdm/heartyservice/ui/HeartyServiceUpdateSettingsActivity;->c:Lcom/zte/zdm/application/ui/c;

    new-instance v0, Lcom/zte/zdm/application/ui/i;

    invoke-direct {v0, p0, p0}, Lcom/zte/zdm/application/ui/i;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iput-object v0, p0, Lcom/zte/zdm/heartyservice/ui/HeartyServiceUpdateSettingsActivity;->d:Lcom/zte/zdm/application/ui/c;

    return-void
.end method

.method private a(Landroid/preference/Preference;)V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/heartyservice/ui/HeartyServiceUpdateSettingsActivity;->a:Lcom/zte/zdm/application/ui/c;

    invoke-virtual {v0, p1}, Lcom/zte/zdm/application/ui/c;->a(Landroid/preference/Preference;)V

    iget-object v0, p0, Lcom/zte/zdm/heartyservice/ui/HeartyServiceUpdateSettingsActivity;->d:Lcom/zte/zdm/application/ui/c;

    invoke-virtual {v0, p1}, Lcom/zte/zdm/application/ui/c;->a(Landroid/preference/Preference;)V

    iget-object v0, p0, Lcom/zte/zdm/heartyservice/ui/HeartyServiceUpdateSettingsActivity;->b:Lcom/zte/zdm/application/ui/c;

    invoke-virtual {v0, p1}, Lcom/zte/zdm/application/ui/c;->a(Landroid/preference/Preference;)V

    iget-object v0, p0, Lcom/zte/zdm/heartyservice/ui/HeartyServiceUpdateSettingsActivity;->c:Lcom/zte/zdm/application/ui/c;

    invoke-virtual {v0, p1}, Lcom/zte/zdm/application/ui/c;->a(Landroid/preference/Preference;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f050005

    invoke-virtual {p0, v0}, Lcom/zte/zdm/heartyservice/ui/HeartyServiceUpdateSettingsActivity;->addPreferencesFromResource(I)V

    invoke-direct {p0}, Lcom/zte/zdm/heartyservice/ui/HeartyServiceUpdateSettingsActivity;->a()V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    const-string v0, "SystemSetting"

    const-string v1, "preference is changed"

    invoke-static {v0, v1}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Key_SystemSetting"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/zte/zdm/heartyservice/ui/HeartyServiceUpdateSettingsActivity;->a(Landroid/preference/Preference;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
