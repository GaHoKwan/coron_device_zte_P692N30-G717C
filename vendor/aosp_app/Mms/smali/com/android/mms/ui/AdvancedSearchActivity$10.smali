.class Lcom/android/mms/ui/AdvancedSearchActivity$10;
.super Ljava/lang/Object;
.source "AdvancedSearchActivity.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


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
    .line 313
    iput-object p1, p0, Lcom/android/mms/ui/AdvancedSearchActivity$10;->this$0:Lcom/android/mms/ui/AdvancedSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 2
    .parameter "view"
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"

    .prologue
    .line 316
    const-string v0, "Mms/AdvancedSearchActivity"

    const-string v1, "onDateSet(): set end date to text."

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lcom/android/mms/ui/AdvancedSearchActivity$10;->this$0:Lcom/android/mms/ui/AdvancedSearchActivity;

    #calls: Lcom/android/mms/ui/AdvancedSearchActivity;->setDate(III)V
    invoke-static {v0, p2, p3, p4}, Lcom/android/mms/ui/AdvancedSearchActivity;->access$800(Lcom/android/mms/ui/AdvancedSearchActivity;III)V

    .line 318
    return-void
.end method
