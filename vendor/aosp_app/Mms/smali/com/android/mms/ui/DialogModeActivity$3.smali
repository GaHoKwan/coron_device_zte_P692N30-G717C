.class Lcom/android/mms/ui/DialogModeActivity$3;
.super Ljava/lang/Object;
.source "DialogModeActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/DialogModeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/DialogModeActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/DialogModeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 301
    iput-object p1, p0, Lcom/android/mms/ui/DialogModeActivity$3;->this$0:Lcom/android/mms/ui/DialogModeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 314
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 303
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 307
    const-string v0, "Mms/DialogMode"

    const-string v1, "mTextEditorWatcher.onTextChanged"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity$3;->this$0:Lcom/android/mms/ui/DialogModeActivity;

    #calls: Lcom/android/mms/ui/DialogModeActivity;->updateSendButtonState()V
    invoke-static {v0}, Lcom/android/mms/ui/DialogModeActivity;->access$100(Lcom/android/mms/ui/DialogModeActivity;)V

    .line 310
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity$3;->this$0:Lcom/android/mms/ui/DialogModeActivity;

    #calls: Lcom/android/mms/ui/DialogModeActivity;->updateCounter(Ljava/lang/CharSequence;III)V
    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/mms/ui/DialogModeActivity;->access$200(Lcom/android/mms/ui/DialogModeActivity;Ljava/lang/CharSequence;III)V

    .line 311
    return-void
.end method
