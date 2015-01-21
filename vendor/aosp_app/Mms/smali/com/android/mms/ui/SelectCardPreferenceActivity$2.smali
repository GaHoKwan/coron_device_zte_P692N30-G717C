.class Lcom/android/mms/ui/SelectCardPreferenceActivity$2;
.super Ljava/lang/Object;
.source "SelectCardPreferenceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SelectCardPreferenceActivity;->setSaveLocation(JLcom/android/mms/ui/AdvancedEditorPreference;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SelectCardPreferenceActivity;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$mSim:Lcom/android/mms/ui/AdvancedEditorPreference;

.field final synthetic val$saveLocation:[Ljava/lang/String;

.field final synthetic val$saveLocationKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SelectCardPreferenceActivity;Ljava/lang/String;[Ljava/lang/String;Lcom/android/mms/ui/AdvancedEditorPreference;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 338
    iput-object p1, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity$2;->this$0:Lcom/android/mms/ui/SelectCardPreferenceActivity;

    iput-object p2, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity$2;->val$saveLocationKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity$2;->val$saveLocation:[Ljava/lang/String;

    iput-object p4, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity$2;->val$mSim:Lcom/android/mms/ui/AdvancedEditorPreference;

    iput-object p5, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 340
    iget-object v1, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity$2;->this$0:Lcom/android/mms/ui/SelectCardPreferenceActivity;

    #getter for: Lcom/android/mms/ui/SelectCardPreferenceActivity;->mSpref:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/android/mms/ui/SelectCardPreferenceActivity;->access$000(Lcom/android/mms/ui/SelectCardPreferenceActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 341
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity$2;->val$saveLocationKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity$2;->val$saveLocation:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 342
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 343
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 344
    iget-object v1, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity$2;->val$mSim:Lcom/android/mms/ui/AdvancedEditorPreference;

    iget-object v2, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity$2;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/AdvancedEditorPreference;->setNotifyChange(Landroid/content/Context;)V

    .line 345
    return-void
.end method
