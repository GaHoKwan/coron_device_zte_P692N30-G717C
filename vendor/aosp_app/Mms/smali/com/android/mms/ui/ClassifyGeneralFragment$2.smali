.class Lcom/android/mms/ui/ClassifyGeneralFragment$2;
.super Ljava/lang/Object;
.source "ClassifyGeneralFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ClassifyGeneralFragment;->showFontDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ClassifyGeneralFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ClassifyGeneralFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 527
    iput-object p1, p0, Lcom/android/mms/ui/ClassifyGeneralFragment$2;->this$0:Lcom/android/mms/ui/ClassifyGeneralFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 529
    iget-object v1, p0, Lcom/android/mms/ui/ClassifyGeneralFragment$2;->this$0:Lcom/android/mms/ui/ClassifyGeneralFragment;

    #getter for: Lcom/android/mms/ui/ClassifyGeneralFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/ui/ClassifyGeneralFragment;->access$000(Lcom/android/mms/ui/ClassifyGeneralFragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 530
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_key_message_font_size"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 531
    const-string v1, "message_font_size"

    iget-object v2, p0, Lcom/android/mms/ui/ClassifyGeneralFragment$2;->this$0:Lcom/android/mms/ui/ClassifyGeneralFragment;

    #getter for: Lcom/android/mms/ui/ClassifyGeneralFragment;->mFontSizeValues:[Ljava/lang/String;
    invoke-static {v2}, Lcom/android/mms/ui/ClassifyGeneralFragment;->access$100(Lcom/android/mms/ui/ClassifyGeneralFragment;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 532
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 533
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 534
    iget-object v1, p0, Lcom/android/mms/ui/ClassifyGeneralFragment$2;->this$0:Lcom/android/mms/ui/ClassifyGeneralFragment;

    #getter for: Lcom/android/mms/ui/ClassifyGeneralFragment;->mFontSize:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/mms/ui/ClassifyGeneralFragment;->access$300(Lcom/android/mms/ui/ClassifyGeneralFragment;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ClassifyGeneralFragment$2;->this$0:Lcom/android/mms/ui/ClassifyGeneralFragment;

    #getter for: Lcom/android/mms/ui/ClassifyGeneralFragment;->mFontSizeChoices:[Ljava/lang/String;
    invoke-static {v2}, Lcom/android/mms/ui/ClassifyGeneralFragment;->access$200(Lcom/android/mms/ui/ClassifyGeneralFragment;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 535
    return-void
.end method
