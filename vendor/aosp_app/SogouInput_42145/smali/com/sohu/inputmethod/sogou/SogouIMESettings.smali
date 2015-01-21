.class public Lcom/sohu/inputmethod/sogou/SogouIMESettings;
.super Lcom/sohu/inputmethod/settings/SogouPreferenceActivity;
.source "SourceFile"


# instance fields
.field private a:I

.field private a:Lace;

.field private a:Lacl;

.field private a:Lacr;

.field private a:Laew;

.field private a:Lafp;

.field private a:Lafs;

.field private a:Lahm;

.field private a:Landroid/app/AlertDialog;

.field private a:Landroid/preference/CheckBoxPreference;

.field private a:Landroid/preference/ListPreference;

.field private a:Landroid/preference/Preference;

.field private a:Landroid/preference/PreferenceScreen;

.field private a:Latv;

.field private a:Lcom/sohu/inputmethod/settings/UpgradeDictDialog;

.field private a:Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;

.field private a:Lcom/sohu/inputmethod/settings/ui/ImagePreference;

.field private a:Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;

.field private a:Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;

.field private a:Z

.field private b:Landroid/preference/CheckBoxPreference;

.field private b:Landroid/preference/ListPreference;

.field private b:Landroid/preference/Preference;

.field private b:Landroid/preference/PreferenceScreen;

.field private b:Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;

.field private b:Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;

.field private b:Z

.field private c:Landroid/preference/CheckBoxPreference;

.field private c:Landroid/preference/ListPreference;

.field private c:Landroid/preference/PreferenceScreen;

.field private c:Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;

.field private d:Landroid/preference/CheckBoxPreference;

.field private d:Landroid/preference/ListPreference;

.field private d:Landroid/preference/PreferenceScreen;

.field private d:Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;

.field private e:Landroid/preference/CheckBoxPreference;

.field private e:Landroid/preference/PreferenceScreen;

.field private e:Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;

.field private f:Landroid/preference/CheckBoxPreference;

.field private f:Landroid/preference/PreferenceScreen;

.field private f:Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;

.field private g:Landroid/preference/CheckBoxPreference;

.field private g:Landroid/preference/PreferenceScreen;

.field private g:Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;

.field private h:Landroid/preference/CheckBoxPreference;

.field private h:Landroid/preference/PreferenceScreen;

.field private h:Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;

.field private i:Landroid/preference/CheckBoxPreference;

.field private i:Landroid/preference/PreferenceScreen;

.field private j:Landroid/preference/CheckBoxPreference;

.field private j:Landroid/preference/PreferenceScreen;

.field private k:Landroid/preference/CheckBoxPreference;

.field private k:Landroid/preference/PreferenceScreen;

.field private l:Landroid/preference/CheckBoxPreference;

.field private l:Landroid/preference/PreferenceScreen;

.field private m:Landroid/preference/CheckBoxPreference;

.field private m:Landroid/preference/PreferenceScreen;

.field private n:Landroid/preference/CheckBoxPreference;

.field private n:Landroid/preference/PreferenceScreen;

.field private o:Landroid/preference/CheckBoxPreference;

.field private o:Landroid/preference/PreferenceScreen;

.field private p:Landroid/preference/CheckBoxPreference;

.field private q:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Lcom/sohu/inputmethod/settings/SogouPreferenceActivity;-><init>()V

    .line 154
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Latv;

    .line 162
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->b:Z

    .line 164
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Laew;

    .line 165
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Lacr;

    .line 166
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Lacl;

    .line 167
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Lafs;

    .line 179
    return-void
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/sogou/SogouIMESettings;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 71
    iput p1, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:I

    return p1
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)Lace;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Lace;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)Lafp;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Lafp;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)Lahm;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Lahm;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)Landroid/app/AlertDialog;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/sogou/SogouIMESettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Landroid/app/AlertDialog;

    return-object p1
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)Landroid/preference/PreferenceScreen;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->o:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)Lcom/sohu/inputmethod/settings/ui/ImagePreference;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Lcom/sohu/inputmethod/settings/ui/ImagePreference;

    return-object v0
.end method

.method private a(Landroid/preference/Preference;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x5

    const/4 v2, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1712
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->j:Landroid/preference/PreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v4, :cond_3

    .line 1713
    const-string v0, "+++++ click the pc merge item ++++++"

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->b(Ljava/lang/String;)V

    .line 1714
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->ac:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->ac:I

    .line 1715
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Lafp;

    invoke-virtual {v0}, Lafp;->h()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1716
    const/4 v0, 0x6

    iput v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:I

    .line 1717
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1718
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/sohu/inputmethod/settings/LoginActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1719
    invoke-virtual {p0, v0, v3}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1889
    :cond_0
    :goto_0
    return-void

    .line 1721
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Laew;

    if-nez v0, :cond_2

    .line 1722
    new-instance v0, Laew;

    invoke-direct {v0, p0}, Laew;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Laew;

    .line 1724
    :cond_2
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Laew;

    invoke-virtual {v0}, Laew;->a()V

    goto :goto_0

    .line 1727
    :cond_3
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Landroid/preference/PreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1728
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->p:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->p:I

    .line 1729
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Lafp;

    invoke-virtual {v0}, Lafp;->h()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1730
    iput v2, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:I

    .line 1731
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1732
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/sohu/inputmethod/settings/LoginActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1733
    invoke-virtual {p0, v0, v3}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1736
    :cond_4
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Lacr;

    if-nez v0, :cond_5

    .line 1737
    new-instance v0, Lacr;

    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Landroid/preference/CheckBoxPreference;

    invoke-direct {v0, p0, v1}, Lacr;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Lacr;

    .line 1739
    :cond_5
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Lacr;

    invoke-virtual {v0}, Lacr;->a()V

    goto :goto_0

    .line 1743
    :cond_6
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->b:Landroid/preference/PreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1749
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->q:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->q:I

    .line 1750
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Lafp;

    invoke-virtual {v0}, Lafp;->h()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1751
    iput v5, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:I

    .line 1752
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1753
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/sohu/inputmethod/settings/LoginActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1754
    invoke-virtual {p0, v0, v3}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1757
    :cond_7
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Lacl;

    if-nez v0, :cond_8

    .line 1758
    new-instance v0, Lacl;

    invoke-direct {v0, p0}, Lacl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Lacl;

    .line 1760
    :cond_8
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Lacl;

    invoke-virtual {v0}, Lacl;->a()V

    goto/16 :goto_0

    .line 1764
    :cond_9
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->c:Landroid/preference/PreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1765
    invoke-direct {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1766
    invoke-direct {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->j()V

    goto/16 :goto_0

    .line 1768
    :cond_a
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1769
    const v1, 0x7f030033

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1770
    const v0, 0x7f070119

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 1771
    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1772
    invoke-static {p0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0}, Lafp;->a()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1773
    const v2, 0x7f020099

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 1774
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 1775
    const v1, 0x7f0b04a3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 1776
    const v1, 0x7f0b0249

    invoke-virtual {p0, v1}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1777
    const/4 v1, -0x1

    const v2, 0x7f0b02ab

    invoke-virtual {p0, v2}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Latn;

    invoke-direct {v3, p0}, Latn;-><init>(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1786
    const/4 v1, -0x2

    const v2, 0x7f0b02ae

    invoke-virtual {p0, v2}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lato;

    invoke-direct {v3, p0}, Lato;-><init>(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1794
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 1859
    :cond_b
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->g:Landroid/preference/PreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1862
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Lace;

    invoke-virtual {v0}, Lace;->d()V

    .line 1864
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iput-boolean v4, v0, Lamo;->a:Z

    .line 1865
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Latv;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v5, v1, v2}, Latv;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 1867
    :cond_c
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->h:Landroid/preference/PreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1868
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Lace;

    invoke-virtual {v0}, Lace;->e()V

    .line 1870
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->v:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->v:I

    .line 1871
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iput-boolean v3, v0, Lamo;->a:Z

    goto/16 :goto_0

    .line 1873
    :cond_d
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->m:Landroid/preference/PreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1874
    const/16 v0, 0x8

    iput v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:I

    .line 1875
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Latv;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Latv;->sendEmptyMessage(I)Z

    .line 1876
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->y:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->y:I

    goto/16 :goto_0

    .line 1878
    :cond_e
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->i:Landroid/preference/PreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1880
    const/16 v0, 0x9

    iput v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:I

    .line 1881
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Latv;

    invoke-virtual {v0, v2}, Latv;->sendEmptyMessage(I)Z

    .line 1882
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->as:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->as:I

    goto/16 :goto_0

    .line 1883
    :cond_f
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->n:Landroid/preference/PreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1884
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1885
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1886
    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->startActivity(Landroid/content/Intent;)V

    .line 1887
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->ee:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->ee:I

    goto/16 :goto_0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->l()V

    return-void
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/sogou/SogouIMESettings;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->b(Z)V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    invoke-static {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 1638
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->b:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 1639
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->b:Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;

    invoke-virtual {v0, p1}, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->setEnabled(Z)V

    .line 1640
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;

    invoke-virtual {v0, p1}, Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;->setEnabled(Z)V

    .line 1641
    return-void
.end method

.method private a()Z
    .locals 3

    .prologue
    .line 1694
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const v1, 0x7f0b0138

    invoke-virtual {p0, v1}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)Z
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->b:Z

    return v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/sogou/SogouIMESettings;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->b:Z

    return p1
.end method

.method public static synthetic b(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->p:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private b()V
    .locals 9

    .prologue
    const v8, 0x7f0b00d5

    const v7, 0x7f0b00d4

    const v3, 0x7f0b00d2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 814
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 816
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;

    .line 817
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "1"

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 818
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0b00d7

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;

    .line 819
    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 820
    invoke-virtual {v0, v6}, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->a(Z)V

    .line 821
    invoke-virtual {v1, v5}, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->a(Z)V

    .line 827
    :goto_0
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;

    .line 828
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "2"

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 829
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0b00d8

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;

    .line 830
    const-string v4, "2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 831
    invoke-virtual {v0, v6}, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->a(Z)V

    .line 832
    invoke-virtual {v1, v5}, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->a(Z)V

    .line 838
    :goto_1
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;

    .line 839
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "2"

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 840
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0b00d9

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;

    .line 841
    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 842
    invoke-virtual {v0, v6}, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->a(Z)V

    .line 843
    invoke-virtual {v1, v5}, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->a(Z)V

    .line 849
    :goto_2
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00d6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;

    .line 850
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0b00d6

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "2"

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 851
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0b00da

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;

    .line 852
    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 853
    invoke-virtual {v0, v6}, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->a(Z)V

    .line 854
    invoke-virtual {v1, v5}, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->a(Z)V

    .line 882
    :goto_3
    return-void

    .line 823
    :cond_0
    invoke-virtual {v0, v5}, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->a(Z)V

    .line 824
    invoke-virtual {v1, v6}, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->a(Z)V

    goto/16 :goto_0

    .line 834
    :cond_1
    invoke-virtual {v0, v5}, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->a(Z)V

    .line 835
    invoke-virtual {v1, v6}, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->a(Z)V

    goto/16 :goto_1

    .line 845
    :cond_2
    invoke-virtual {v0, v5}, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->a(Z)V

    .line 846
    invoke-virtual {v1, v6}, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->a(Z)V

    goto :goto_2

    .line 856
    :cond_3
    invoke-virtual {v0, v5}, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->a(Z)V

    .line 857
    invoke-virtual {v1, v6}, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->a(Z)V

    goto :goto_3
.end method

.method public static synthetic b(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->p()V

    return-void
.end method

.method private static b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 2252
    return-void
.end method

.method private b(Z)V
    .locals 2
    .parameter

    .prologue
    .line 1698
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1699
    const v1, 0x7f0b0138

    invoke-virtual {p0, v1}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1700
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1701
    return-void
.end method

.method public static synthetic c(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->d:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private c()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 885
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 896
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b0017

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 897
    :goto_0
    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->l:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0b0208

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 900
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b00cd

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 901
    if-eqz v0, :cond_2

    .line 902
    invoke-direct {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->k()V

    .line 903
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Lcom/sohu/inputmethod/settings/ui/ImagePreference;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/settings/ui/ImagePreference;->a()V

    .line 910
    :goto_2
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a()V

    .line 911
    invoke-direct {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->m()V

    .line 912
    invoke-direct {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->n()V

    .line 915
    return-void

    :cond_0
    move v0, v1

    .line 896
    goto :goto_0

    .line 897
    :cond_1
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0b01e9

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 906
    :cond_2
    invoke-direct {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->l()V

    .line 907
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Lcom/sohu/inputmethod/settings/ui/ImagePreference;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/settings/ui/ImagePreference;->b()V

    goto :goto_2
.end method

.method public static synthetic c(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->n()V

    return-void
.end method

.method public static synthetic d(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->f:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private d()V
    .locals 7

    .prologue
    const v2, 0x7f0b020d

    const v6, 0x7f0b004d

    const v5, 0x7f0b0048

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 927
    const-string v0, "init preference view for the sogou settings"

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->b(Ljava/lang/String;)V

    .line 928
    const v0, 0x7f050004

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->addPreferencesFromResource(I)V

    .line 934
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00fe

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->d:Landroid/preference/ListPreference;

    .line 935
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->d:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->d:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 936
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->d:Landroid/preference/ListPreference;

    new-instance v1, Lasq;

    invoke-direct {v1, p0}, Lasq;-><init>(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 944
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Lcom/sohu/inputmethod/settings/UpgradeDictDialog;

    .line 945
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Landroid/preference/PreferenceScreen;

    .line 946
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0063

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->b:Landroid/preference/PreferenceScreen;

    .line 947
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b005e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->c:Landroid/preference/PreferenceScreen;

    .line 948
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Lafp;

    invoke-virtual {v0}, Lafp;->N()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 949
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->c:Landroid/preference/PreferenceScreen;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 953
    :goto_0
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0069

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->d:Landroid/preference/PreferenceScreen;

    .line 954
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b006a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->e:Landroid/preference/PreferenceScreen;

    .line 955
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b006b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/settings/ui/ImagePreference;

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Lcom/sohu/inputmethod/settings/ui/ImagePreference;

    .line 957
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0073

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;

    .line 958
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00cf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->c:Landroid/preference/ListPreference;

    .line 959
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->c:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->c:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 960
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->c:Landroid/preference/ListPreference;

    new-instance v1, Latb;

    invoke-direct {v1, p0}, Latb;-><init>(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 970
    sget-boolean v0, Laox;->a:Z

    if-eqz v0, :cond_0

    .line 971
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->c:Landroid/preference/ListPreference;

    invoke-virtual {v0, v4}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 972
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->c:Landroid/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setShouldDisableView(Z)V

    .line 973
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;

    invoke-virtual {v0, v4}, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->setEnabled(Z)V

    .line 974
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;

    invoke-virtual {v0, v3}, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->setShouldDisableView(Z)V

    .line 977
    :cond_0
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b005f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->g:Landroid/preference/PreferenceScreen;

    .line 978
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0061

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->h:Landroid/preference/PreferenceScreen;

    .line 979
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0064

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->i:Landroid/preference/PreferenceScreen;

    .line 980
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0082

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->j:Landroid/preference/PreferenceScreen;

    .line 981
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0065

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->n:Landroid/preference/PreferenceScreen;

    .line 983
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b007d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->b:Landroid/preference/Preference;

    .line 984
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00ce

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->m:Landroid/preference/PreferenceScreen;

    .line 995
    invoke-virtual {p0, v6}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->e:Landroid/preference/CheckBoxPreference;

    .line 996
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->e:Landroid/preference/CheckBoxPreference;

    new-instance v1, Latm;

    invoke-direct {v1, p0}, Latm;-><init>(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1004
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b007e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->b:Landroid/preference/ListPreference;

    .line 1006
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->b:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->b:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1007
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->b:Landroid/preference/ListPreference;

    new-instance v1, Latp;

    invoke-direct {v1, p0}, Latp;-><init>(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1020
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b007a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->b:Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;

    .line 1022
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b007f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;

    .line 1024
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;

    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->b:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;->a(I)V

    .line 1027
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->b:Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;

    new-instance v1, Latq;

    invoke-direct {v1, p0}, Latq;-><init>(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)V

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1036
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b006d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->k:Landroid/preference/PreferenceScreen;

    .line 1037
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->l:Landroid/preference/PreferenceScreen;

    .line 1039
    invoke-direct {p0, v3}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a(Z)V

    .line 1143
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b005b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->d:Landroid/preference/CheckBoxPreference;

    .line 1145
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b005a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->c:Landroid/preference/CheckBoxPreference;

    .line 1146
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->d:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->c:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1147
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->c:Landroid/preference/CheckBoxPreference;

    new-instance v1, Latr;

    invoke-direct {v1, p0}, Latr;-><init>(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1188
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Lcom/sohu/inputmethod/settings/ui/ImagePreference;

    new-instance v1, Lats;

    invoke-direct {v1, p0}, Lats;-><init>(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)V

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/settings/ui/ImagePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1197
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0060

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->b:Landroid/preference/CheckBoxPreference;

    .line 1199
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->b:Landroid/preference/CheckBoxPreference;

    new-instance v1, Latt;

    invoke-direct {v1, p0}, Latt;-><init>(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1219
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00cd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Landroid/preference/CheckBoxPreference;

    .line 1221
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Landroid/preference/CheckBoxPreference;

    new-instance v1, Latu;

    invoke-direct {v1, p0}, Latu;-><init>(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1255
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->f:Landroid/preference/CheckBoxPreference;

    .line 1257
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->f:Landroid/preference/CheckBoxPreference;

    new-instance v1, Lasr;

    invoke-direct {v1, p0}, Lasr;-><init>(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1272
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->g:Landroid/preference/CheckBoxPreference;

    .line 1274
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->g:Landroid/preference/CheckBoxPreference;

    new-instance v1, Lass;

    invoke-direct {v1, p0}, Lass;-><init>(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1285
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1286
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1288
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->g:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1290
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->h:Landroid/preference/CheckBoxPreference;

    .line 1292
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->h:Landroid/preference/CheckBoxPreference;

    new-instance v1, Last;

    invoke-direct {v1, p0}, Last;-><init>(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1303
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->i:Landroid/preference/CheckBoxPreference;

    .line 1306
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->o:Landroid/preference/PreferenceScreen;

    .line 1307
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0037

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/settings/ui/UrlPreference;

    .line 1308
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0156

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/settings/ui/UrlPreference;->a(Ljava/lang/String;)V

    .line 1309
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0038

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/settings/ui/UrlPreference;->b(Ljava/lang/String;)V

    .line 1311
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;

    .line 1312
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;

    new-instance v1, Lasu;

    invoke-direct {v1, p0}, Lasu;-><init>(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)V

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1322
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->b:Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;

    .line 1323
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->b:Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;

    new-instance v1, Lasv;

    invoke-direct {v1, p0}, Lasv;-><init>(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)V

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1334
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->c:Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;

    .line 1335
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->c:Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;

    new-instance v1, Lasw;

    invoke-direct {v1, p0}, Lasw;-><init>(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)V

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1346
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0032

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->d:Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;

    .line 1347
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->d:Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;

    new-instance v1, Lasx;

    invoke-direct {v1, p0}, Lasx;-><init>(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)V

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1358
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0036

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->h:Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;

    .line 1359
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->h:Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;

    new-instance v1, Lasy;

    invoke-direct {v1, p0}, Lasy;-><init>(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)V

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1370
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0033

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->e:Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;

    .line 1371
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->e:Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;

    new-instance v1, Lasz;

    invoke-direct {v1, p0}, Lasz;-><init>(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)V

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1381
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0035

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->g:Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;

    .line 1382
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->g:Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;

    new-instance v1, Lata;

    invoke-direct {v1, p0}, Lata;-><init>(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)V

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1393
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0034

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->f:Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;

    .line 1394
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->f:Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;

    new-instance v1, Latc;

    invoke-direct {v1, p0}, Latc;-><init>(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)V

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1406
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->j:Landroid/preference/CheckBoxPreference;

    .line 1407
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->j:Landroid/preference/CheckBoxPreference;

    new-instance v1, Latd;

    invoke-direct {v1, p0}, Latd;-><init>(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1423
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->k:Landroid/preference/CheckBoxPreference;

    .line 1424
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->k:Landroid/preference/CheckBoxPreference;

    new-instance v1, Late;

    invoke-direct {v1, p0}, Late;-><init>(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1436
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->l:Landroid/preference/CheckBoxPreference;

    .line 1438
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->l:Landroid/preference/CheckBoxPreference;

    new-instance v1, Latf;

    invoke-direct {v1, p0}, Latf;-><init>(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1450
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b004a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->m:Landroid/preference/CheckBoxPreference;

    .line 1452
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->m:Landroid/preference/CheckBoxPreference;

    new-instance v1, Latg;

    invoke-direct {v1, p0}, Latg;-><init>(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1463
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b004c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->o:Landroid/preference/CheckBoxPreference;

    .line 1465
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->o:Landroid/preference/CheckBoxPreference;

    new-instance v1, Lath;

    invoke-direct {v1, p0}, Lath;-><init>(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1477
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->n:Landroid/preference/CheckBoxPreference;

    .line 1479
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->n:Landroid/preference/CheckBoxPreference;

    new-instance v1, Lati;

    invoke-direct {v1, p0}, Lati;-><init>(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1492
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00dc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->p:Landroid/preference/CheckBoxPreference;

    .line 1493
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->p:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v1

    invoke-virtual {v1}, Lafp;->z()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1494
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->p:Landroid/preference/CheckBoxPreference;

    new-instance v1, Latj;

    invoke-direct {v1, p0}, Latj;-><init>(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1507
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00f4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->q:Landroid/preference/CheckBoxPreference;

    .line 1508
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->q:Landroid/preference/CheckBoxPreference;

    new-instance v1, Latk;

    invoke-direct {v1, p0}, Latk;-><init>(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1555
    invoke-direct {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->g()V

    .line 1556
    invoke-direct {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->h()V

    .line 1557
    return-void

    .line 951
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->c:Landroid/preference/PreferenceScreen;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Lafp;

    invoke-virtual {v2}, Lafp;->N()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public static synthetic d(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->k()V

    return-void
.end method

.method public static synthetic e(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->g:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1560
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->h:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1563
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->j:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1564
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lafp;->x(Z)V

    .line 1565
    return-void
.end method

.method public static synthetic e(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->e()V

    return-void
.end method

.method public static synthetic f(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->h:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private f()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1569
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->h:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1571
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->h:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1574
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->j:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1575
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0, v2}, Lafp;->x(Z)V

    .line 1576
    return-void
.end method

.method public static synthetic f(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->f()V

    return-void
.end method

.method public static synthetic g(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->j:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private g()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1579
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->o:Landroid/preference/PreferenceScreen;

    if-nez v0, :cond_0

    .line 1634
    :goto_0
    return-void

    .line 1581
    :cond_0
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0}, Lafp;->i()Ljava/lang/String;

    move-result-object v0

    .line 1582
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1627
    :pswitch_0
    invoke-direct {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->e()V

    .line 1628
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;

    if-eqz v0, :cond_1

    .line 1629
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->a(Z)V

    .line 1630
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->o:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b014e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1584
    :pswitch_1
    invoke-direct {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->f()V

    .line 1585
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->b:Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;

    if-eqz v0, :cond_2

    .line 1586
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->b:Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->a(Z)V

    .line 1587
    :cond_2
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->o:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b014f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1590
    :pswitch_2
    invoke-direct {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->f()V

    .line 1591
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->c:Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;

    if-eqz v0, :cond_3

    .line 1592
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->c:Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->a(Z)V

    .line 1593
    :cond_3
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->o:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0150

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1596
    :pswitch_3
    invoke-direct {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->f()V

    .line 1597
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->d:Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;

    if-eqz v0, :cond_4

    .line 1598
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->d:Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->a(Z)V

    .line 1599
    :cond_4
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->o:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0151

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1602
    :pswitch_4
    invoke-direct {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->f()V

    .line 1603
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->e:Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;

    if-eqz v0, :cond_5

    .line 1604
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->e:Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->a(Z)V

    .line 1605
    :cond_5
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->o:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0152

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1608
    :pswitch_5
    invoke-direct {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->f()V

    .line 1609
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->f:Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;

    if-eqz v0, :cond_6

    .line 1610
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->f:Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->a(Z)V

    .line 1611
    :cond_6
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->o:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0153

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1614
    :pswitch_6
    invoke-direct {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->f()V

    .line 1615
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->g:Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;

    if-eqz v0, :cond_7

    .line 1616
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->g:Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->a(Z)V

    .line 1617
    :cond_7
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->o:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0154

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1620
    :pswitch_7
    invoke-direct {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->f()V

    .line 1621
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->h:Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;

    if-eqz v0, :cond_8

    .line 1622
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->h:Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->a(Z)V

    .line 1623
    :cond_8
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->o:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0155

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1582
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_7
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static synthetic g(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->j()V

    return-void
.end method

.method public static synthetic h(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->k:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private h()V
    .locals 4

    .prologue
    const v3, 0x7f0b01d3

    const/4 v0, 0x1

    .line 1644
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v1, v0, :cond_0

    .line 1645
    :goto_0
    if-nez v0, :cond_1

    .line 1668
    :goto_1
    return-void

    .line 1644
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1647
    :cond_1
    new-instance v1, Landroid/preference/PreferenceCategory;

    invoke-direct {v1, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 1648
    const v0, 0x7f0b01ab

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 1650
    new-instance v0, Landroid/preference/ListPreference;

    invoke-direct {v0, p0}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Landroid/preference/ListPreference;

    .line 1651
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Landroid/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 1652
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Landroid/preference/ListPreference;

    const v2, 0x7f0b0085

    invoke-virtual {p0, v2}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 1653
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Landroid/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    .line 1654
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Landroid/preference/ListPreference;

    new-instance v2, Latl;

    invoke-direct {v2, p0}, Latl;-><init>(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)V

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1663
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 1664
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b008f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 1666
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1667
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method public static synthetic i(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->l:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private i()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 1671
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v1, v0, :cond_0

    .line 1673
    :goto_0
    if-nez v0, :cond_1

    .line 1691
    :goto_1
    return-void

    .line 1671
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1675
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1676
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1677
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1679
    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Lafp;

    invoke-virtual {v3, v0, v1, v2}, Lafp;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 1680
    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Lafp;

    invoke-virtual {v3}, Lafp;->w()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1681
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1682
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 1683
    const v4, 0x7f0b0086

    invoke-virtual {p0, v4}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1684
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1687
    :cond_2
    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Landroid/preference/ListPreference;

    invoke-virtual {v3, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1688
    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Landroid/preference/ListPreference;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 1689
    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Landroid/preference/ListPreference;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 1690
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public static synthetic j(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->m:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private j()V
    .locals 2

    .prologue
    .line 1704
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->t:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->t:I

    .line 1705
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Lafs;

    if-nez v0, :cond_0

    .line 1706
    new-instance v0, Lafs;

    invoke-direct {v0, p0}, Lafs;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Lafs;

    .line 1708
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Lafs;

    invoke-virtual {v0}, Lafs;->a()V

    .line 1709
    return-void
.end method

.method public static synthetic k(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->o:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private k()V
    .locals 6

    .prologue
    const v5, 0x7f0b020b

    .line 1935
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    .line 1936
    invoke-virtual {v0}, Lafp;->b()J

    move-result-wide v1

    .line 1937
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    .line 1938
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 1939
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1940
    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Landroid/preference/CheckBoxPreference;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1944
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lafp;->C(Z)V

    .line 1945
    invoke-direct {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->o()V

    .line 1946
    return-void

    .line 1942
    :cond_0
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v5}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static synthetic l(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->n:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private l()V
    .locals 6

    .prologue
    const v5, 0x7f0b020b

    .line 1949
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    .line 1950
    invoke-virtual {v0}, Lafp;->b()J

    move-result-wide v1

    .line 1951
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    .line 1952
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 1953
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1954
    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Landroid/preference/CheckBoxPreference;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1958
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lafp;->C(Z)V

    .line 1959
    invoke-direct {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->o()V

    .line 1960
    return-void

    .line 1956
    :cond_0
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v5}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static synthetic m(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->q:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private m()V
    .locals 5

    .prologue
    .line 1975
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    .line 1976
    invoke-virtual {v0}, Lafp;->c()J

    move-result-wide v0

    .line 1977
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 1978
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 1979
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1980
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Lcom/sohu/inputmethod/settings/UpgradeDictDialog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0b020c

    invoke-virtual {p0, v4}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->setSummary(Ljava/lang/CharSequence;)V

    .line 1982
    :cond_0
    return-void
.end method

.method private n()V
    .locals 4

    .prologue
    .line 1985
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    .line 1986
    invoke-virtual {v0}, Lafp;->f()I

    move-result v1

    .line 1987
    if-lez v1, :cond_0

    .line 1988
    invoke-virtual {v0}, Lafp;->y()Ljava/lang/String;

    move-result-object v0

    .line 1989
    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->b:Landroid/preference/CheckBoxPreference;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v3, 0x7f0b0242

    invoke-virtual {p0, v3}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0b0243

    invoke-virtual {p0, v1}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1996
    :goto_0
    return-void

    .line 1994
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->b:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0b01fd

    invoke-virtual {p0, v1}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private o()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2007
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    .line 2008
    invoke-virtual {v0}, Lafp;->E()Z

    move-result v1

    if-ne v1, v3, :cond_0

    .line 2009
    const-string v1, "setting  the sync time step"

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->b(Ljava/lang/String;)V

    .line 2010
    invoke-virtual {v0}, Lafp;->d()I

    move-result v1

    mul-int/lit8 v1, v1, 0x18

    int-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lafp;->a(D)V

    .line 2011
    invoke-virtual {v0, v3}, Lafp;->B(Z)V

    .line 2017
    :goto_0
    return-void

    .line 2013
    :cond_0
    const-string v1, "cancel sync alarm"

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->b(Ljava/lang/String;)V

    .line 2014
    invoke-virtual {v0}, Lafp;->q()V

    .line 2015
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lafp;->B(Z)V

    goto :goto_0
.end method

.method private p()V
    .locals 10

    .prologue
    const v9, 0x7f0b0043

    const/4 v8, 0x5

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2034
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2035
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 2037
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->d:Landroid/preference/ListPreference;

    const-string v3, "2"

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 2038
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->d:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->d:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2040
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b0073

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;

    .line 2041
    invoke-virtual {v0, v7}, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a(I)V

    .line 2042
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b0073

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2043
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2045
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b0048

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 2046
    invoke-virtual {v0, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2048
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b0047

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 2049
    invoke-virtual {v0, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2051
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b0017

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2052
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->l:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b01e9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 2054
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b0049

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;

    .line 2055
    invoke-virtual {v0, v5}, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->a(Z)V

    .line 2057
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b001d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 2058
    invoke-virtual {v0, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2060
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b002f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;

    .line 2061
    invoke-virtual {v0, v5}, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->a(Z)V

    .line 2063
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lafp;->l(Ljava/lang/String;)V

    .line 2065
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b001f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 2066
    invoke-virtual {v0, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2068
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b0133

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 2069
    sget-boolean v3, Lafp;->a:Z

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2077
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b002c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 2078
    invoke-virtual {v0, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2080
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b001e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 2081
    invoke-virtual {v0, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2083
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b002d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 2084
    invoke-virtual {v0, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2086
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b0039

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 2087
    invoke-virtual {v0, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2089
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b003a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 2090
    invoke-virtual {v0, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2092
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b004b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 2093
    invoke-virtual {v0, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2095
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b004a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 2096
    invoke-virtual {v0, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2099
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b004d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 2100
    invoke-virtual {v0, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2101
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laox;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/symuser.xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2102
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2103
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 2104
    invoke-static {}, Laur;->a()V

    .line 2106
    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laox;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/symcommon.xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2107
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 2108
    :cond_1
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Labt;->a(Landroid/content/Context;)Labt;

    move-result-object v0

    invoke-virtual {v0}, Labt;->a()V

    .line 2110
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b004c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 2111
    invoke-virtual {v0, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2113
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;

    .line 2114
    sget v3, Lafp;->a:I

    invoke-virtual {v0, v3}, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a(I)V

    .line 2115
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v3, Lafp;->a:I

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2117
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0, v5}, Lafp;->b(I)V

    .line 2119
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b0045

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;

    .line 2120
    invoke-virtual {v0, v6}, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a(I)V

    .line 2121
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b0045

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2123
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0, v5}, Lafp;->a(I)V

    .line 2125
    sget-boolean v0, Laox;->a:Z

    if-eqz v0, :cond_6

    .line 2126
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->c:Landroid/preference/ListPreference;

    const-string v3, "3"

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 2129
    :goto_0
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->c:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->c:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2137
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b00d2

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;

    .line 2138
    invoke-virtual {v0, v5}, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->a(Z)V

    .line 2139
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b00d4

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;

    .line 2140
    invoke-virtual {v0, v5}, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->a(Z)V

    .line 2141
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b00d9

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;

    .line 2142
    invoke-virtual {v0, v5}, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->a(Z)V

    .line 2143
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b00d6

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;

    .line 2144
    invoke-virtual {v0, v5}, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->a(Z)V

    .line 2150
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b0072

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;

    .line 2151
    invoke-virtual {v0, v7}, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a(I)V

    .line 2152
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b0072

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2154
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b00f4

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 2155
    invoke-virtual {v0, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2157
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    if-eq v0, v5, :cond_2

    .line 2158
    const v0, 0x7f0b0086

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2159
    const v3, 0x7f0b0085

    invoke-virtual {p0, v3}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2160
    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 2161
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2165
    :cond_2
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->b:Landroid/preference/ListPreference;

    const-string v3, "0xFFE84900"

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 2166
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->b:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->b:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2168
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->b:Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;

    invoke-virtual {v0, v8}, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a(I)V

    .line 2169
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b007a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2171
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;

    invoke-virtual {v0, v8}, Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;->c(I)V

    .line 2172
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b007f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v3, 0x1f4

    invoke-interface {v2, v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 2174
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b006e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2176
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lavr;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 2177
    invoke-static {}, Lavs;->a()Lavs;

    move-result-object v0

    .line 2178
    const-string v1, ""

    invoke-virtual {v0, v1, v5}, Lavs;->a(Ljava/lang/String;Z)Z

    .line 2179
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0}, Lafp;->j()V

    .line 2180
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0, v6}, Lafp;->A(Z)V

    .line 2181
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Laxc;->a(Landroid/content/Context;)Laxc;

    move-result-object v0

    invoke-virtual {v0, v5}, Laxc;->a(Z)V

    .line 2182
    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->isInputViewShown()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2183
    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0, v6}, Lcom/sohu/inputmethod/sogou/SogouIME;->requestHideSelf(I)V

    .line 2189
    :goto_1
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b006e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2192
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->cB:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->cB:I

    .line 2195
    :cond_3
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->c:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2196
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->c:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2197
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const v1, 0x7f0b0052

    invoke-virtual {p0, v1}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0b00b7

    invoke-virtual {p0, v3}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2200
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Lafp;

    invoke-virtual {v1, v0}, Lafp;->i(I)V

    .line 2203
    :cond_4
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->d:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 2204
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->d:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2206
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Lafp;

    invoke-virtual {v0}, Lafp;->h()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2207
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2208
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Lcom/sohu/inputmethod/settings/ui/ImagePreference;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/settings/ui/ImagePreference;->b()V

    .line 2209
    invoke-direct {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->l()V

    .line 2211
    :cond_5
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0, v6}, Lafp;->a(Z)V

    .line 2213
    const v0, 0x7f0b0076

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2214
    const v0, 0x7f0b0075

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2226
    invoke-direct {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->g()V

    .line 2227
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2229
    return-void

    .line 2128
    :cond_6
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->c:Landroid/preference/ListPreference;

    const-string v3, "1"

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2185
    :cond_7
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Laxc;->a(Landroid/content/Context;)Laxc;

    move-result-object v0

    invoke-virtual {v0, v5}, Laxc;->b(Z)V

    .line 2186
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Laxc;->a(Landroid/content/Context;)Laxc;

    move-result-object v0

    invoke-virtual {v0}, Laxc;->a()V

    .line 2187
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Laxc;->a(Landroid/content/Context;)Laxc;

    move-result-object v0

    invoke-virtual {v0, v6}, Laxc;->a(Z)V

    goto/16 :goto_1
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    const v4, 0x7f0b020b

    .line 1963
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    .line 1964
    invoke-virtual {v0}, Lafp;->b()J

    move-result-wide v0

    .line 1965
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 1966
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 1967
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1968
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Landroid/preference/CheckBoxPreference;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1972
    :goto_0
    return-void

    .line 1970
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v4}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2021
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult, requestCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", resultCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->b(Ljava/lang/String;)V

    .line 2022
    invoke-super {p0, p1, p2, p3}, Lcom/sohu/inputmethod/settings/SogouPreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2023
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 2024
    const/4 v0, 0x0

    iput v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:I

    .line 2029
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 482
    invoke-super {p0, p1}, Lcom/sohu/inputmethod/settings/SogouPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 483
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Laox;->a(Landroid/content/Context;)Laox;

    .line 484
    const-string v0, "oncreate"

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->b(Ljava/lang/String;)V

    .line 486
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 487
    const v1, 0x7f0b0057

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 488
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Lafp;

    .line 489
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Lafp;

    invoke-virtual {v0, p0}, Lafp;->a(Landroid/content/Context;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Landroid/app/AlertDialog;

    .line 490
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Lafp;

    invoke-virtual {v0}, Lafp;->x()V

    .line 491
    new-instance v0, Latv;

    invoke-direct {v0, p0}, Latv;-><init>(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Latv;

    .line 499
    invoke-direct {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->d()V

    .line 500
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Z

    .line 501
    iput v2, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:I

    .line 503
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lace;->a(Landroid/content/Context;)Lace;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Lace;

    .line 504
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lahm;->a(Landroid/content/Context;)Lahm;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Lahm;

    .line 505
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Lafp;

    invoke-virtual {v0}, Lafp;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 506
    invoke-direct {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->i()V

    .line 507
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Lafp;

    invoke-virtual {v0, v2}, Lafp;->o(Z)V

    .line 508
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Lafp;

    invoke-virtual {v0}, Lafp;->z()Z

    move-result v0

    if-nez v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Latv;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Latv;->sendEmptyMessage(I)Z

    .line 512
    :cond_0
    invoke-static {}, Laox;->b()V

    .line 513
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 534
    invoke-super {p0}, Lcom/sohu/inputmethod/settings/SogouPreferenceActivity;->onDestroy()V

    .line 539
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Laew;

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Laew;

    invoke-virtual {v0}, Laew;->b()V

    .line 541
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Laew;

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Lacr;

    if-eqz v0, :cond_1

    .line 544
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Lacr;

    invoke-virtual {v0}, Lacr;->b()V

    .line 545
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Lacr;

    .line 547
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Lacl;

    if-eqz v0, :cond_2

    .line 548
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Lacl;

    invoke-virtual {v0}, Lacl;->b()V

    .line 549
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Lacl;

    .line 551
    :cond_2
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Lafs;

    if-eqz v0, :cond_3

    .line 552
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Lafs;

    invoke-virtual {v0}, Lafs;->i()V

    .line 553
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Lafs;

    .line 556
    :cond_3
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 557
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 558
    :cond_4
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Landroid/app/AlertDialog;

    if-eqz v0, :cond_5

    .line 559
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 560
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Landroid/app/AlertDialog;

    .line 564
    :cond_5
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_6

    .line 565
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 566
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Landroid/preference/PreferenceScreen;

    .line 569
    :cond_6
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Lcom/sohu/inputmethod/settings/UpgradeDictDialog;

    if-eqz v0, :cond_7

    .line 570
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Lcom/sohu/inputmethod/settings/UpgradeDictDialog;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a()V

    .line 571
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Lcom/sohu/inputmethod/settings/UpgradeDictDialog;

    .line 574
    :cond_7
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->b:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_8

    .line 575
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->b:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 576
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->b:Landroid/preference/PreferenceScreen;

    .line 578
    :cond_8
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->c:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_9

    .line 579
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->c:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 580
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->c:Landroid/preference/PreferenceScreen;

    .line 582
    :cond_9
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->d:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_a

    .line 583
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->d:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 584
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->d:Landroid/preference/PreferenceScreen;

    .line 586
    :cond_a
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->e:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_b

    .line 587
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->e:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 588
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->e:Landroid/preference/PreferenceScreen;

    .line 590
    :cond_b
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->f:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_c

    .line 591
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->f:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 592
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->f:Landroid/preference/PreferenceScreen;

    .line 594
    :cond_c
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Lcom/sohu/inputmethod/settings/ui/ImagePreference;

    if-eqz v0, :cond_d

    .line 595
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Lcom/sohu/inputmethod/settings/ui/ImagePreference;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/settings/ui/ImagePreference;->d()V

    .line 596
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Lcom/sohu/inputmethod/settings/ui/ImagePreference;

    .line 602
    :cond_d
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;

    if-eqz v0, :cond_e

    .line 603
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a()V

    .line 604
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;

    .line 606
    :cond_e
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->g:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_f

    .line 607
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->g:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 608
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->g:Landroid/preference/PreferenceScreen;

    .line 610
    :cond_f
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->h:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_10

    .line 611
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->h:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 612
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->h:Landroid/preference/PreferenceScreen;

    .line 614
    :cond_10
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->h:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_11

    .line 615
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->h:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 616
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->h:Landroid/preference/PreferenceScreen;

    .line 618
    :cond_11
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->i:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_12

    .line 619
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->i:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 620
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->i:Landroid/preference/PreferenceScreen;

    .line 622
    :cond_12
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->j:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_13

    .line 623
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->j:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 624
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->j:Landroid/preference/PreferenceScreen;

    .line 626
    :cond_13
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->n:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_14

    .line 627
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->n:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 628
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->n:Landroid/preference/PreferenceScreen;

    .line 630
    :cond_14
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->k:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_15

    .line 631
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->k:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 632
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->k:Landroid/preference/PreferenceScreen;

    .line 634
    :cond_15
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->l:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_16

    .line 635
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->l:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 636
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->l:Landroid/preference/PreferenceScreen;

    .line 638
    :cond_16
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->m:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_17

    .line 639
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->m:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 640
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->m:Landroid/preference/PreferenceScreen;

    .line 642
    :cond_17
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->b:Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;

    if-eqz v0, :cond_18

    .line 643
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->b:Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a()V

    .line 644
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->b:Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;

    .line 646
    :cond_18
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;

    if-eqz v0, :cond_19

    .line 647
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;->a()V

    .line 648
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;

    .line 651
    :cond_19
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Lace;

    if-eqz v0, :cond_1a

    .line 652
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Lace;

    invoke-virtual {v0}, Lace;->c()V

    .line 653
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Lace;

    .line 656
    :cond_1a
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 657
    if-eqz v0, :cond_1b

    .line 658
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 667
    :cond_1b
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lsa;->a(Landroid/content/Context;)Lsa;

    move-result-object v0

    invoke-virtual {v0}, Lsa;->a()Lsb;

    move-result-object v0

    instance-of v0, v0, Lamg;

    if-nez v0, :cond_1c

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lsa;->a(Landroid/content/Context;)Lsa;

    move-result-object v0

    invoke-virtual {v0}, Lsa;->a()Lsb;

    move-result-object v0

    instance-of v0, v0, Lalq;

    if-eqz v0, :cond_1d

    .line 669
    :cond_1c
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lsa;->a(Landroid/content/Context;)Lsa;

    move-result-object v0

    invoke-virtual {v0, v1}, Lsa;->a(Lsb;)V

    .line 672
    :cond_1d
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Lahm;

    if-eqz v0, :cond_1e

    .line 673
    invoke-static {}, Lahm;->a()V

    .line 674
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Lahm;

    .line 676
    :cond_1e
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->o:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_1f

    .line 677
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->o:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 678
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->o:Landroid/preference/PreferenceScreen;

    .line 680
    :cond_1f
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;

    .line 681
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->b:Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;

    .line 682
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->c:Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;

    .line 683
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->d:Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;

    .line 684
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->e:Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;

    .line 685
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->f:Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;

    .line 686
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->g:Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;

    .line 687
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->h:Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;

    .line 689
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Landroid/preference/CheckBoxPreference;

    .line 690
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->b:Landroid/preference/CheckBoxPreference;

    .line 691
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Landroid/preference/ListPreference;

    .line 692
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->b:Landroid/preference/ListPreference;

    .line 693
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Landroid/preference/Preference;

    .line 695
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->b:Landroid/preference/Preference;

    .line 696
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->c:Landroid/preference/ListPreference;

    .line 697
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->c:Landroid/preference/CheckBoxPreference;

    .line 698
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->d:Landroid/preference/CheckBoxPreference;

    .line 699
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->e:Landroid/preference/CheckBoxPreference;

    .line 701
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->f:Landroid/preference/CheckBoxPreference;

    .line 702
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->g:Landroid/preference/CheckBoxPreference;

    .line 703
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->h:Landroid/preference/CheckBoxPreference;

    .line 704
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->i:Landroid/preference/CheckBoxPreference;

    .line 705
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->o:Landroid/preference/PreferenceScreen;

    .line 706
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->j:Landroid/preference/CheckBoxPreference;

    .line 707
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->k:Landroid/preference/CheckBoxPreference;

    .line 708
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->l:Landroid/preference/CheckBoxPreference;

    .line 709
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->m:Landroid/preference/CheckBoxPreference;

    .line 710
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->n:Landroid/preference/CheckBoxPreference;

    .line 711
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->o:Landroid/preference/CheckBoxPreference;

    .line 712
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->p:Landroid/preference/CheckBoxPreference;

    .line 713
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->q:Landroid/preference/CheckBoxPreference;

    .line 714
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->d:Landroid/preference/ListPreference;

    .line 716
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Lafp;

    .line 718
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Lace;

    .line 719
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Lahm;

    .line 720
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Landroid/preference/CheckBoxPreference;

    .line 722
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Latv;

    if-eqz v0, :cond_20

    .line 723
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Latv;

    invoke-virtual {v0, v1}, Latv;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 724
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Latv;

    .line 727
    :cond_20
    const-string v0, "onDestroy"

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->b(Ljava/lang/String;)V

    .line 728
    invoke-static {}, Laox;->a()V

    .line 732
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 2233
    const/16 v0, 0x52

    if-ne p1, v0, :cond_1

    .line 2236
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "mFlags"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 2237
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 2238
    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2239
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    move v0, v1

    .line 2243
    :goto_0
    if-eqz v0, :cond_1

    .line 2245
    :goto_1
    return v1

    .line 2239
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2240
    :catch_0
    move-exception v0

    .line 2241
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    move v0, v1

    goto :goto_0

    .line 2245
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/sohu/inputmethod/settings/SogouPreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 746
    invoke-super {p0}, Lcom/sohu/inputmethod/settings/SogouPreferenceActivity;->onPause()V

    .line 747
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 748
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 749
    const v1, 0x7f0b0076

    invoke-virtual {p0, v1}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 750
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 751
    const-string v0, "onPause"

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->b(Ljava/lang/String;)V

    .line 752
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 757
    instance-of v0, p2, Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 765
    iput-object p2, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Landroid/preference/Preference;

    .line 766
    invoke-direct {p0, p2}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a(Landroid/preference/Preference;)V

    .line 768
    :cond_0
    instance-of v0, p2, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;

    if-eqz v0, :cond_1

    move-object v0, p2

    .line 769
    check-cast v0, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;

    .line 770
    invoke-virtual {v0}, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0052

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 772
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "frequency: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->b(Ljava/lang/String;)V

    .line 773
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Lafp;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lafp;->i(I)V

    .line 782
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/sohu/inputmethod/settings/SogouPreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 774
    :cond_2
    invoke-virtual {v0}, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0049

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 776
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sohu/inputmethod/engine/IMEInterface;->getInstance(Landroid/content/Context;)Lcom/sohu/inputmethod/engine/IMEInterface;

    move-result-object v0

    .line 777
    invoke-virtual {v0}, Lcom/sohu/inputmethod/engine/IMEInterface;->saveUserDict()V

    .line 778
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/engine/IMEInterface;->release(Z)V

    .line 779
    invoke-virtual {v0}, Lcom/sohu/inputmethod/engine/IMEInterface;->init()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 787
    invoke-super {p0}, Lcom/sohu/inputmethod/settings/SogouPreferenceActivity;->onResume()V

    .line 788
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[[onResume]] mActionDialog = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->b(Ljava/lang/String;)V

    .line 789
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Latv;

    invoke-virtual {v0, v2}, Latv;->sendEmptyMessage(I)Z

    .line 791
    iget v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:I

    if-ne v0, v3, :cond_1

    .line 792
    new-instance v0, Lacr;

    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Landroid/preference/CheckBoxPreference;

    invoke-direct {v0, p0, v1}, Lacr;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V

    invoke-virtual {v0}, Lacr;->a()V

    .line 804
    :cond_0
    :goto_0
    iput v2, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:I

    .line 806
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->p:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v1

    invoke-virtual {v1}, Lafp;->z()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 807
    invoke-direct {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->c()V

    .line 808
    invoke-direct {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->i()V

    .line 809
    invoke-direct {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->b()V

    .line 810
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->aY:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->aY:I

    .line 811
    return-void

    .line 793
    :cond_1
    iget v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 794
    new-instance v0, Lacl;

    invoke-direct {v0, p0}, Lacl;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lacl;->a()V

    goto :goto_0

    .line 795
    :cond_2
    iget v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    .line 796
    new-instance v0, Laew;

    invoke-direct {v0, p0}, Laew;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Laew;->a()V

    goto :goto_0

    .line 797
    :cond_3
    iget v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_4

    .line 798
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Latv;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Latv;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 799
    :cond_4
    iget v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_5

    .line 800
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Latv;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Latv;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 801
    :cond_5
    iget v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 802
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Latv;

    invoke-virtual {v0, v3}, Latv;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onUserLeaveHint()V
    .locals 2

    .prologue
    .line 736
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    invoke-virtual {v0}, Lqy;->a()V

    .line 741
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 742
    :cond_0
    return-void
.end method
