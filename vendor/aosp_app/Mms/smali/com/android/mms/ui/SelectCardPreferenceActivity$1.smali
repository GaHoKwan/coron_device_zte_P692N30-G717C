.class Lcom/android/mms/ui/SelectCardPreferenceActivity$1;
.super Ljava/lang/Object;
.source "SelectCardPreferenceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SelectCardPreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SelectCardPreferenceActivity;

.field final synthetic val$peroids:[I

.field final synthetic val$validityKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SelectCardPreferenceActivity;Ljava/lang/String;[I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 283
    iput-object p1, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity$1;->this$0:Lcom/android/mms/ui/SelectCardPreferenceActivity;

    iput-object p2, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity$1;->val$validityKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity$1;->val$peroids:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "item"

    .prologue
    .line 285
    iget-object v1, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity$1;->this$0:Lcom/android/mms/ui/SelectCardPreferenceActivity;

    #getter for: Lcom/android/mms/ui/SelectCardPreferenceActivity;->mSpref:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/android/mms/ui/SelectCardPreferenceActivity;->access$000(Lcom/android/mms/ui/SelectCardPreferenceActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 286
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity$1;->val$validityKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity$1;->val$peroids:[I

    aget v2, v2, p2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 287
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 288
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 289
    return-void
.end method
