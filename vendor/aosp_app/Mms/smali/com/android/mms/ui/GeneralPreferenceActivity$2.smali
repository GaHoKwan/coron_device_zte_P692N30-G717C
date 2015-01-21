.class Lcom/android/mms/ui/GeneralPreferenceActivity$2;
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
    .line 425
    iput-object p1, p0, Lcom/android/mms/ui/GeneralPreferenceActivity$2;->this$0:Lcom/android/mms/ui/GeneralPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 427
    iget-object v0, p0, Lcom/android/mms/ui/GeneralPreferenceActivity$2;->this$0:Lcom/android/mms/ui/GeneralPreferenceActivity;

    #getter for: Lcom/android/mms/ui/GeneralPreferenceActivity;->mFontSizeDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/mms/ui/GeneralPreferenceActivity;->access$100(Lcom/android/mms/ui/GeneralPreferenceActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 428
    return-void
.end method
