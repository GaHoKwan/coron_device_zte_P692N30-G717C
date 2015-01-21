.class Lcom/android/mms/ui/ChatPreferenceActivity$7;
.super Ljava/lang/Object;
.source "ChatPreferenceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ChatPreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ChatPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ChatPreferenceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 586
    iput-object p1, p0, Lcom/android/mms/ui/ChatPreferenceActivity$7;->this$0:Lcom/android/mms/ui/ChatPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 589
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 590
    return-void
.end method
