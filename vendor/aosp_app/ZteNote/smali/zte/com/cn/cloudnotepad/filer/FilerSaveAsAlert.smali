.class public Lzte/com/cn/cloudnotepad/filer/FilerSaveAsAlert;
.super Landroid/preference/PreferenceActivity;
.source "FilerSaveAsAlert.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static saveAsFilepath:Ljava/lang/String;


# instance fields
.field private mButtonCancel:Landroid/widget/Button;

.field private mButtonDone:Landroid/widget/Button;

.field private mFilename:Landroid/preference/EditTextPreference;

.field private mFilepath:Landroid/preference/Preference;

.field public saveAsFilename:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lzte/com/cn/cloudnotepad/filer/FilerSaveAsAlert;)Landroid/preference/EditTextPreference;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/filer/FilerSaveAsAlert;->mFilename:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method private doneDownloadSettings()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 78
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/filer/FilerSaveAsAlert;->saveAsFilename:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/filer/FilerSaveAsAlert;->saveAsFilename:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 79
    :cond_0
    const v3, 0x7f0900e2

    invoke-static {p0, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 93
    :goto_0
    return-void

    .line 82
    :cond_1
    new-instance v1, Ljava/io/File;

    sget-object v3, Lzte/com/cn/cloudnotepad/filer/FilerSaveAsAlert;->saveAsFilepath:Ljava/lang/String;

    iget-object v4, p0, Lzte/com/cn/cloudnotepad/filer/FilerSaveAsAlert;->saveAsFilename:Ljava/lang/String;

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .local v1, fSave:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 84
    const v3, 0x7f0900b0

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Lzte/com/cn/cloudnotepad/filer/FilerSaveAsAlert;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 85
    .local v2, msg:Ljava/lang/String;
    invoke-static {p0, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 88
    .end local v2           #msg:Ljava/lang/String;
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v3, "zte.com.cn.filer.download.donesettings"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 89
    .local v0, backDownload:Landroid/content/Intent;
    const-string v3, "filename"

    iget-object v4, p0, Lzte/com/cn/cloudnotepad/filer/FilerSaveAsAlert;->saveAsFilename:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    const-string v3, "filepath"

    sget-object v4, Lzte/com/cn/cloudnotepad/filer/FilerSaveAsAlert;->saveAsFilepath:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    invoke-virtual {p0, v0}, Lzte/com/cn/cloudnotepad/filer/FilerSaveAsAlert;->sendBroadcast(Landroid/content/Intent;)V

    .line 92
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/filer/FilerSaveAsAlert;->finish()V

    goto :goto_0
.end method


# virtual methods
.method public dealFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "fileName"
    .parameter "filePath"

    .prologue
    .line 114
    move-object v3, p1

    .line 115
    .local v3, name:Ljava/lang/String;
    move-object v4, p2

    .line 116
    .local v4, path:Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .local v7, temp:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 118
    const-string v6, ""

    .line 119
    .local v6, subname:Ljava/lang/String;
    const-string v5, ""

    .line 120
    .local v5, subexten:Ljava/lang/String;
    const/4 v0, 0x1

    .line 121
    .local v0, i:I
    const-string v8, "."

    invoke-virtual {v3, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 122
    .local v1, index:I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 123
    .local v2, len:I
    const/4 v8, -0x1

    if-ne v1, v8, :cond_1

    .line 124
    move-object v6, v3

    .line 129
    :goto_0
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_2

    .line 135
    .end local v0           #i:I
    .end local v1           #index:I
    .end local v2           #len:I
    .end local v5           #subexten:Ljava/lang/String;
    .end local v6           #subname:Ljava/lang/String;
    :cond_0
    return-object v3

    .line 126
    .restart local v0       #i:I
    .restart local v1       #index:I
    .restart local v2       #len:I
    .restart local v5       #subexten:Ljava/lang/String;
    .restart local v6       #subname:Ljava/lang/String;
    :cond_1
    const/4 v8, 0x0

    invoke-virtual {v3, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 127
    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 129
    goto :goto_0

    .line 130
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 131
    add-int/lit8 v0, v0, 0x1

    .line 132
    new-instance v7, Ljava/io/File;

    .end local v7           #temp:Ljava/io/File;
    invoke-direct {v7, v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v7       #temp:Ljava/io/File;
    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 65
    .local v0, id:I
    packed-switch v0, :pswitch_data_0

    .line 73
    :goto_0
    return-void

    .line 67
    :pswitch_0
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/filer/FilerSaveAsAlert;->doneDownloadSettings()V

    goto :goto_0

    .line 70
    :pswitch_1
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/filer/FilerSaveAsAlert;->finish()V

    goto :goto_0

    .line 65
    :pswitch_data_0
    .packed-switch 0x7f060044
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const v1, 0x7f040001

    invoke-virtual {p0, v1}, Lzte/com/cn/cloudnotepad/filer/FilerSaveAsAlert;->addPreferencesFromResource(I)V

    .line 32
    const v1, 0x7f03000e

    invoke-virtual {p0, v1}, Lzte/com/cn/cloudnotepad/filer/FilerSaveAsAlert;->setContentView(I)V

    .line 33
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/filer/FilerSaveAsAlert;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 34
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "filename"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lzte/com/cn/cloudnotepad/filer/FilerSaveAsAlert;->saveAsFilename:Ljava/lang/String;

    .line 35
    const-string v1, "filepath"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lzte/com/cn/cloudnotepad/filer/FilerSaveAsAlert;->saveAsFilepath:Ljava/lang/String;

    .line 36
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/filer/FilerSaveAsAlert;->saveAsFilename:Ljava/lang/String;

    sget-object v2, Lzte/com/cn/cloudnotepad/filer/FilerSaveAsAlert;->saveAsFilepath:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lzte/com/cn/cloudnotepad/filer/FilerSaveAsAlert;->dealFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lzte/com/cn/cloudnotepad/filer/FilerSaveAsAlert;->saveAsFilename:Ljava/lang/String;

    .line 37
    const-string v1, "filename"

    invoke-virtual {p0, v1}, Lzte/com/cn/cloudnotepad/filer/FilerSaveAsAlert;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    iput-object v1, p0, Lzte/com/cn/cloudnotepad/filer/FilerSaveAsAlert;->mFilename:Landroid/preference/EditTextPreference;

    .line 38
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/filer/FilerSaveAsAlert;->mFilename:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/filer/FilerSaveAsAlert;->saveAsFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 39
    const-string v1, "filepath"

    invoke-virtual {p0, v1}, Lzte/com/cn/cloudnotepad/filer/FilerSaveAsAlert;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lzte/com/cn/cloudnotepad/filer/FilerSaveAsAlert;->mFilepath:Landroid/preference/Preference;

    .line 40
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/filer/FilerSaveAsAlert;->mFilename:Landroid/preference/EditTextPreference;

    new-instance v2, Lzte/com/cn/cloudnotepad/filer/FilerSaveAsAlert$1;

    invoke-direct {v2, p0}, Lzte/com/cn/cloudnotepad/filer/FilerSaveAsAlert$1;-><init>(Lzte/com/cn/cloudnotepad/filer/FilerSaveAsAlert;)V

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 47
    const v1, 0x7f060045

    invoke-virtual {p0, v1}, Lzte/com/cn/cloudnotepad/filer/FilerSaveAsAlert;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lzte/com/cn/cloudnotepad/filer/FilerSaveAsAlert;->mButtonDone:Landroid/widget/Button;

    .line 48
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/filer/FilerSaveAsAlert;->mButtonDone:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    const v1, 0x7f060044

    invoke-virtual {p0, v1}, Lzte/com/cn/cloudnotepad/filer/FilerSaveAsAlert;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lzte/com/cn/cloudnotepad/filer/FilerSaveAsAlert;->mButtonCancel:Landroid/widget/Button;

    .line 50
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/filer/FilerSaveAsAlert;->mButtonCancel:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 99
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/filer/FilerSaveAsAlert;->mFilename:Landroid/preference/EditTextPreference;

    if-ne p2, v2, :cond_0

    .line 101
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/filer/FilerSaveAsAlert;->saveAsFilename:Ljava/lang/String;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 102
    .local v0, index:I
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/filer/FilerSaveAsAlert;->saveAsFilename:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 103
    .local v1, len:I
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/filer/FilerSaveAsAlert;->mFilename:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/filer/FilerSaveAsAlert;->saveAsFilename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 104
    if-lez v0, :cond_1

    if-gt v0, v1, :cond_1

    .line 105
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/filer/FilerSaveAsAlert;->mFilename:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Landroid/widget/EditText;->setSelection(II)V

    .line 110
    .end local v0           #index:I
    .end local v1           #len:I
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2

    .line 107
    .restart local v0       #index:I
    .restart local v1       #len:I
    :cond_1
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/filer/FilerSaveAsAlert;->mFilename:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->selectAll()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 56
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 57
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/filer/FilerSaveAsAlert;->mFilepath:Landroid/preference/Preference;

    sget-object v1, Lzte/com/cn/cloudnotepad/filer/FilerSaveAsAlert;->saveAsFilepath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 58
    return-void
.end method
