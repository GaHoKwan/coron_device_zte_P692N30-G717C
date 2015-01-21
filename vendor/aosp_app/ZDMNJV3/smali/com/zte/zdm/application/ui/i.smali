.class public Lcom/zte/zdm/application/ui/i;
.super Lcom/zte/zdm/application/ui/c;


# static fields
.field private static final e:Ljava/lang/String; = "isWifiOnly"

.field private static final f:Z = true


# direct methods
.method public constructor <init>(Landroid/preference/PreferenceActivity;Landroid/preference/Preference$OnPreferenceChangeListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/zte/zdm/application/ui/c;-><init>()V

    iput-object p1, p0, Lcom/zte/zdm/application/ui/i;->c:Landroid/preference/PreferenceActivity;

    iput-object p2, p0, Lcom/zte/zdm/application/ui/i;->d:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {p0}, Lcom/zte/zdm/application/ui/i;->a()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/zte/zdm/application/ui/i;->c:Landroid/preference/PreferenceActivity;

    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/application/ui/i;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/zte/zdm/application/ui/i;->c:Landroid/preference/PreferenceActivity;

    iget-object v1, p0, Lcom/zte/zdm/application/ui/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/zte/zdm/application/ui/i;->b:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/zte/zdm/application/ui/i;->b:Landroid/preference/CheckBoxPreference;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/application/ui/i;->c:Landroid/preference/PreferenceActivity;

    invoke-static {v0}, Lcom/zte/zdm/application/ui/f;->a(Landroid/content/Context;)Lcom/zte/zdm/application/ui/f;

    move-result-object v0

    const-string v1, "isWifiOnly"

    invoke-virtual {v0, v1}, Lcom/zte/zdm/application/ui/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zte/zdm/application/ui/i;->c:Landroid/preference/PreferenceActivity;

    invoke-static {v0}, Lcom/zte/zdm/application/ui/f;->a(Landroid/content/Context;)Lcom/zte/zdm/application/ui/f;

    move-result-object v0

    const-string v1, "isWifiOnly"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/ui/f;->a(Ljava/lang/String;Z)V

    :cond_1
    iget-object v0, p0, Lcom/zte/zdm/application/ui/i;->c:Landroid/preference/PreferenceActivity;

    invoke-static {v0}, Lcom/zte/zdm/application/ui/f;->a(Landroid/content/Context;)Lcom/zte/zdm/application/ui/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/ui/f;->b()Lcom/zte/zdm/application/ui/g;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/ui/i;->b:Landroid/preference/CheckBoxPreference;

    iget-boolean v0, v0, Lcom/zte/zdm/application/ui/g;->c:Z

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/ui/i;->b:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/zte/zdm/application/ui/i;->d:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method public a(Landroid/preference/Preference;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/zte/zdm/application/ui/i;->b:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/zte/zdm/application/ui/i;->b:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const-string v0, "switchCheckPref is null or key is not the same"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/zte/zdm/application/ui/i;->b:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/zte/zdm/application/ui/i;->c:Landroid/preference/PreferenceActivity;

    invoke-static {v2}, Lcom/zte/zdm/application/ui/f;->a(Landroid/content/Context;)Lcom/zte/zdm/application/ui/f;

    move-result-object v2

    const-string v3, "isWifiOnly"

    invoke-virtual {v2, v3, v1}, Lcom/zte/zdm/application/ui/f;->a(Ljava/lang/String;Z)V

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/zdm/application/ui/i;->b:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_3

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/zte/zdm/application/ui/i;->c:Landroid/preference/PreferenceActivity;

    invoke-static {v2}, Lcom/zte/zdm/application/ui/f;->a(Landroid/content/Context;)Lcom/zte/zdm/application/ui/f;

    move-result-object v2

    const-string v3, "isWifiOnly"

    invoke-virtual {v2, v3, v0}, Lcom/zte/zdm/application/ui/f;->a(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method
