.class Lcom/android/mms/ui/ImportSmsActivity$5;
.super Ljava/lang/Object;
.source "ImportSmsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ImportSmsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ImportSmsActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ImportSmsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 211
    iput-object p1, p0, Lcom/android/mms/ui/ImportSmsActivity$5;->this$0:Lcom/android/mms/ui/ImportSmsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .parameter "arg0"

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/mms/ui/ImportSmsActivity$5;->this$0:Lcom/android/mms/ui/ImportSmsActivity;

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/mms/ui/ImportSmsActivity;->mImportFileName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/mms/ui/ImportSmsActivity;->access$202(Lcom/android/mms/ui/ImportSmsActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 216
    const-string v0, "MMS/ImportSmsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Click listener you choosed file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ImportSmsActivity$5;->this$0:Lcom/android/mms/ui/ImportSmsActivity;

    #getter for: Lcom/android/mms/ui/ImportSmsActivity;->mImportFileName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/mms/ui/ImportSmsActivity;->access$200(Lcom/android/mms/ui/ImportSmsActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/android/mms/ui/ImportSmsActivity$5;->this$0:Lcom/android/mms/ui/ImportSmsActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 219
    const/4 v0, 0x0

    return v0
.end method
