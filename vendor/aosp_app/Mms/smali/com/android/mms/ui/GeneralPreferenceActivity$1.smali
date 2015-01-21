.class Lcom/android/mms/ui/GeneralPreferenceActivity$1;
.super Ljava/lang/Object;
.source "GeneralPreferenceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/GeneralPreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/GeneralPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/GeneralPreferenceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 429
    iput-object p1, p0, Lcom/android/mms/ui/GeneralPreferenceActivity$1;->this$0:Lcom/android/mms/ui/GeneralPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 431
    iget-object v1, p0, Lcom/android/mms/ui/GeneralPreferenceActivity$1;->this$0:Lcom/android/mms/ui/GeneralPreferenceActivity;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 433
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_key_message_font_size"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 434
    const-string v1, "message_font_size"

    iget-object v2, p0, Lcom/android/mms/ui/GeneralPreferenceActivity$1;->this$0:Lcom/android/mms/ui/GeneralPreferenceActivity;

    #getter for: Lcom/android/mms/ui/GeneralPreferenceActivity;->mFontSizeValues:[Ljava/lang/String;
    invoke-static {v2}, Lcom/android/mms/ui/GeneralPreferenceActivity;->access$000(Lcom/android/mms/ui/GeneralPreferenceActivity;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 435
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 436
    iget-object v1, p0, Lcom/android/mms/ui/GeneralPreferenceActivity$1;->this$0:Lcom/android/mms/ui/GeneralPreferenceActivity;

    #getter for: Lcom/android/mms/ui/GeneralPreferenceActivity;->mFontSizeDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/mms/ui/GeneralPreferenceActivity;->access$100(Lcom/android/mms/ui/GeneralPreferenceActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 437
    iget-object v1, p0, Lcom/android/mms/ui/GeneralPreferenceActivity$1;->this$0:Lcom/android/mms/ui/GeneralPreferenceActivity;

    #getter for: Lcom/android/mms/ui/GeneralPreferenceActivity;->mFontSize:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/mms/ui/GeneralPreferenceActivity;->access$300(Lcom/android/mms/ui/GeneralPreferenceActivity;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/GeneralPreferenceActivity$1;->this$0:Lcom/android/mms/ui/GeneralPreferenceActivity;

    #getter for: Lcom/android/mms/ui/GeneralPreferenceActivity;->mFontSizeChoices:[Ljava/lang/String;
    invoke-static {v2}, Lcom/android/mms/ui/GeneralPreferenceActivity;->access$200(Lcom/android/mms/ui/GeneralPreferenceActivity;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 438
    return-void
.end method
