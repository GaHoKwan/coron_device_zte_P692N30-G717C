.class Lzte/com/cn/cloudnotepad/filer/FilerSaveAsAlert$1;
.super Ljava/lang/Object;
.source "FilerSaveAsAlert.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzte/com/cn/cloudnotepad/filer/FilerSaveAsAlert;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzte/com/cn/cloudnotepad/filer/FilerSaveAsAlert;


# direct methods
.method constructor <init>(Lzte/com/cn/cloudnotepad/filer/FilerSaveAsAlert;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/filer/FilerSaveAsAlert$1;->this$0:Lzte/com/cn/cloudnotepad/filer/FilerSaveAsAlert;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .parameter "pref"
    .parameter "newValue"

    .prologue
    .line 42
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/filer/FilerSaveAsAlert$1;->this$0:Lzte/com/cn/cloudnotepad/filer/FilerSaveAsAlert;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lzte/com/cn/cloudnotepad/filer/FilerSaveAsAlert;->saveAsFilename:Ljava/lang/String;

    .line 43
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/filer/FilerSaveAsAlert$1;->this$0:Lzte/com/cn/cloudnotepad/filer/FilerSaveAsAlert;

    #getter for: Lzte/com/cn/cloudnotepad/filer/FilerSaveAsAlert;->mFilename:Landroid/preference/EditTextPreference;
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/filer/FilerSaveAsAlert;->access$0(Lzte/com/cn/cloudnotepad/filer/FilerSaveAsAlert;)Landroid/preference/EditTextPreference;

    move-result-object v0

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/filer/FilerSaveAsAlert$1;->this$0:Lzte/com/cn/cloudnotepad/filer/FilerSaveAsAlert;

    iget-object v1, v1, Lzte/com/cn/cloudnotepad/filer/FilerSaveAsAlert;->saveAsFilename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 44
    const/4 v0, 0x0

    return v0
.end method
