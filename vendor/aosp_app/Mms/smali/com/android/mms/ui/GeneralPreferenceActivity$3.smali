.class Lcom/android/mms/ui/GeneralPreferenceActivity$3;
.super Ljava/lang/Object;
.source "GeneralPreferenceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 440
    iput-object p1, p0, Lcom/android/mms/ui/GeneralPreferenceActivity$3;->this$0:Lcom/android/mms/ui/GeneralPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 442
    iget-object v0, p0, Lcom/android/mms/ui/GeneralPreferenceActivity$3;->this$0:Lcom/android/mms/ui/GeneralPreferenceActivity;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/app/Activity;->removeDialog(I)V

    .line 443
    return-void
.end method
