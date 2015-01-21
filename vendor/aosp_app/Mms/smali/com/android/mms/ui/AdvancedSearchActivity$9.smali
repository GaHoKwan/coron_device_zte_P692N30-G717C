.class Lcom/android/mms/ui/AdvancedSearchActivity$9;
.super Ljava/lang/Object;
.source "AdvancedSearchActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/AdvancedSearchActivity;->initDatePickerDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/AdvancedSearchActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/AdvancedSearchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 305
    iput-object p1, p0, Lcom/android/mms/ui/AdvancedSearchActivity$9;->this$0:Lcom/android/mms/ui/AdvancedSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/mms/ui/AdvancedSearchActivity$9;->this$0:Lcom/android/mms/ui/AdvancedSearchActivity;

    const/4 v1, 0x1

    #setter for: Lcom/android/mms/ui/AdvancedSearchActivity;->mIsCancelDatePick:Z
    invoke-static {v0, v1}, Lcom/android/mms/ui/AdvancedSearchActivity;->access$902(Lcom/android/mms/ui/AdvancedSearchActivity;Z)Z

    .line 309
    return-void
.end method
