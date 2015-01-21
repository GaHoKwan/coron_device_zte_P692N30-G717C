.class Lcom/android/mms/ui/SmsPreferenceActivity$1;
.super Ljava/lang/Object;
.source "SmsPreferenceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SmsPreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SmsPreferenceActivity;

.field final synthetic val$validityKey:Ljava/lang/String;

.field final synthetic val$validityPeroids:[I


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SmsPreferenceActivity;Ljava/lang/String;[I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 596
    iput-object p1, p0, Lcom/android/mms/ui/SmsPreferenceActivity$1;->this$0:Lcom/android/mms/ui/SmsPreferenceActivity;

    iput-object p2, p0, Lcom/android/mms/ui/SmsPreferenceActivity$1;->val$validityKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/mms/ui/SmsPreferenceActivity$1;->val$validityPeroids:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "item"

    .prologue
    .line 598
    iget-object v1, p0, Lcom/android/mms/ui/SmsPreferenceActivity$1;->this$0:Lcom/android/mms/ui/SmsPreferenceActivity;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 600
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Lcom/android/mms/ui/SmsPreferenceActivity$1;->val$validityKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mms/ui/SmsPreferenceActivity$1;->val$validityPeroids:[I

    aget v2, v2, p2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 601
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 602
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 603
    return-void
.end method
